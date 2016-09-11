//Clamp Movement Values
eSpeed = clamp(eSpeed, -maxSpeed, maxSpeed);

//Fractional Movement Handling
eSpeedFinal = eSpeed + eSpeedFrac;
eSpeedFrac = eSpeedFinal - floor(abs(eSpeedFinal)) * sign(eSpeedFinal);
eSpeedFinal -= eSpeedFrac;
