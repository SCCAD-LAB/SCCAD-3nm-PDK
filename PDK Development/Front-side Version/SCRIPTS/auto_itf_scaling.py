

import re
import argparse

def scale_itf_resistance(input_file, output_file, scale_factor, targets):
    try:
        with open(input_file, 'r') as f:
            lines = f.readlines()
    except FileNotFoundError:
        print(f" Error: Could not find the file '{input_file}'.")
        return

    updated_lines = []
    scale_all = 'all' in targets
    
    for line in lines:
        # 1. Scale Via Resistance (RPV=value)
        if ('via' in targets or scale_all) and 'RPV=' in line:
            def rpv_repl(match):
                val = float(match.group(1))
                return f"RPV={val * scale_factor:.6g}"
            line = re.sub(r'RPV=([0-9\.eE+-]+)', rpv_repl, line)
            
        # 2. Scale Sheet Resistance (RHO=value)
        if ('metal' in targets or scale_all) and 'RHO=' in line:
            def rho_repl(match):
                val = float(match.group(1))
                return f"RHO={val * scale_factor:.6g}"
            line = re.sub(r'RHO=([0-9\.eE+-]+)', rho_repl, line)
            
        # 3. Scale Resistance Table based on width/thickness (VALUES { ... })
        if ('table' in targets or scale_all) and 'VALUES' in line and '{' in line and '}' in line:
            def values_repl(match):
                vals_str = match.group(1)
                # Convert space or tab-separated numbers into a list
                vals = [float(v) for v in vals_str.split()]
                # Multiply by scale factor (format to 6 significant digits for clean output)
                scaled_vals = [f"{v * scale_factor:.6g}" for v in vals]
                return "VALUES { " + "\t".join(scaled_vals) + " }"
            line = re.sub(r'VALUES\s*\{\s*(.*?)\s*\}', values_repl, line)
            
        updated_lines.append(line)
        
    # Save the result
    with open(output_file, 'w') as f:
        f.writelines(updated_lines)
        
    targets_str = ", ".join(targets)
    print(f" Success: Resistance values for [{targets_str}] have been scaled by {scale_factor}x.")
    print(f" Saved to: {output_file}")

if __name__ == "__main__":
    # Setup argument parser for terminal execution
    parser = argparse.ArgumentParser(description="Scales specific resistance values in an ITF file by a given factor.")
    parser.add_argument("-i", "--input", required=True, help="Input ITF file name (e.g., sccad_3nm.itf)")
    parser.add_argument("-o", "--output", required=True, help="Output ITF file name (e.g., sccad_3nm_scaled.itf)")
    parser.add_argument("-s", "--scale", type=float, required=True, help="Scale factor to multiply the resistance by (e.g., 1.5)")
    
    # New target argument
    parser.add_argument("-t", "--target", nargs='+', choices=['via', 'metal', 'table', 'all'], default=['all'], 
                        help="Target to scale: 'via' (RPV), 'metal' (RHO), 'table' (VALUES), or 'all' (default). You can specify multiple targets.")
    
    args = parser.parse_args()
    
    scale_itf_resistance(args.input, args.output, args.scale, args.target)