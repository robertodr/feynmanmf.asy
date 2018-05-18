import feynmanmf;

pair S;

CoupledClusterT1 Tai = CoupledClusterT1(
  "a i",
  symbol = 'T',
  angles=new real[]{110,70}
);

CoupledClusterT2 Tabij = CoupledClusterT2(
  "a b i j",
  angles=new real[]{110,110,70,70}
);

CoupledClusterT3 Tabcijk = CoupledClusterT3(
  "a b c i j k",
  angles=new real[]{110,110,110,70,70,70}
);

S = (0,0);
write(shift(S) * Tai);
draw(shift(S) * Tai, true);
label(
  Tai.diagram.name, shift(S + (30,20)) * (
    0.5*Tai.diagram.vertices[0]
  )
);

S = (100,0);
write(shift(S) * Tabij);
draw(shift(S) * Tabij, true);
label(
  Tabij.diagram.name, shift(S + (0,20)) * (
    0.5*Tabij.diagram.vertices[0] + 0.5*Tabij.diagram.vertices[1]
  )
);

S = (300,0);
write(shift(S) * Tabcijk);
draw(shift(S) * Tabcijk, true);
label(
  Tabcijk.diagram.name, shift(S + (0,20)) * (
    0.5*Tabcijk.diagram.vertices[0] + 0.5*Tabij.diagram.vertices[1]
  )
);
