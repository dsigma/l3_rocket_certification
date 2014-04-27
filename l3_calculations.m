
airframe_diameter = 4.0  %inches
airframe_radius = airframe_diameter / 2.0;
number_of_shear_pins = 3
shear_force_per_shear_pin = 35  % approx 35 pounds to shear a 2-56 nylon screw


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calculations for BP charge sizes
%
%From http://www.info-central.org/?article=303
%C * D * D * L = grams of BP Where:

%C - one of the values listed below
%0.002 = 5 psi
%0.004 = 10 psi
%0.006 = 15 psi
%0.0072 = 18 psi
%0.008 = 20 psi
%D = airframe diameter, in inches
%L = length of the cavity to be pressurized, in inches

charge_psi = 17;
C = 0.0065;  %from table above
D = airframe_diameter;    %inches
Lmain = 36.125 - 5.0 + 5.5;   % inches, compensate for the E-bay and nosecone
Ldrogue = 52.0 - 7.0 - 18.0; %inches, compensate for E-Bay and Motor


main_grams_of_bp = C * D * D * Lmain
drogue_grams_of_bp = C * D * D * Ldrogue

% The number of pounds over the expected shear force 
% necessary for all the shear pins
ejection_force_necessary = (number_of_shear_pins * shear_force_per_shear_pin)
charge_force = (pi() * airframe_radius^2 * charge_psi)
charge_pressure_factor_of_safety = charge_force / ejection_force_necessary