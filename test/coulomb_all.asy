import feynmanmf;

CoulombIntegral Vabcd = CoulombIntegral(
  "a b c d",
  angles=new real[]{110,70,110,70}
);
CoulombIntegral Vabci = CoulombIntegral(
  "a b c i",
  angles=new real[]{110,70,110,110}
);
CoulombIntegral Vabic = CoulombIntegral(
  "a b i c",
  angles=new real[]{110,70,70,70}
);
CoulombIntegral Vaibc = CoulombIntegral(
  "a i b c",
  angles=new real[]{110,110,110,70}
);
CoulombIntegral Viabc = CoulombIntegral(
  "i a b c",
  angles=new real[]{70,70,110,70}
);
CoulombIntegral Vabij = CoulombIntegral(
  "a b i j",
  angles=new real[]{110,110,70,70}
);
CoulombIntegral Vaibj = CoulombIntegral(
  "a i b j",
  angles=new real[]{110,70,110,70}
);
CoulombIntegral Viabj = CoulombIntegral(
  "i a b j",
  angles=new real[]{70,70,110,110}
);
CoulombIntegral Vaijb = CoulombIntegral(
  "a i j b",
  angles=new real[]{110,110,70,70}
);
CoulombIntegral Viajb = CoulombIntegral(
  "i a j b",
  angles=new real[]{110,70,110,70}
);
CoulombIntegral Vijab = CoulombIntegral(
  "i j a b",
  angles=new real[]{110,110,70,70}
);
CoulombIntegral Vaijk = CoulombIntegral(
  "a i j k",
  angles=new real[]{70,70,110,70}
);
CoulombIntegral Viajk = CoulombIntegral(
  "i a j k",
  angles=new real[]{110,70,110,110}
);
CoulombIntegral Vijak = CoulombIntegral(
  "i j a k",
  angles=new real[]{70,70,110,70}
);
CoulombIntegral Vijka = CoulombIntegral(
  "i j k a",
  angles=new real[]{110,70,110,110}
);
CoulombIntegral Vijkl = CoulombIntegral(
  "i j k l",
  angles=new real[]{110,70,110,70}
);


CoulombIntegral Integrals[] = {
  Vabcd, Vabci, Vabic, Vaibc, Viabc, Vabij, Vaibj, Viabj,
  Vaijb, Viajb, Vijab, Vaijk, Viajk, Vijak, Vijka, Vijkl
};

real xsep = 200;
real ysep = -250;

for ( int i = 0; i < Integrals.length; i+=1 ) {
  pair S = i<8 ? (i * xsep, 0) : ((i-8) * xsep, ysep);
  write(shift(S) * Integrals[i]);
  draw(shift(S) * Integrals[i], true);
  label(
    Integrals[i].diagram.name, shift(S + (0,20)) * (
      0.5*Integrals[i].diagram.vertices[0] + 0.5*Integrals[i].diagram.vertices[1]
    )
  );
}


