import feynmanmf;

void draw_fock(OneBodyDiagram term, bool labels=false){
  draw(term, labels);
  filldraw(shift(term.diagram.vertices[0]) * scale(18) * unitcircle, white);
  label(term.diagram.name, term.diagram.vertices[0]);
};

OneBodyDiagram fock_OO = OneBodyDiagram("i_1 i_2", angles=new real[]{90, 90});
OneBodyDiagram fock_VO = OneBodyDiagram("a_1 i_1", angles=new real[]{70, 110});
OneBodyDiagram fock_OV = OneBodyDiagram("i_1 a_1", angles=new real[]{110, 70});
OneBodyDiagram fock_VV = OneBodyDiagram("a_1 b_1", angles=new real[]{90, 90});

OneBodyDiagram diagrams[] = {fock_OO, fock_VO, fock_OV, fock_VV};

for ( int i = 0; i < diagrams.length; i+=1 ) {
  draw_fock(shift((i*100, 0)) * diagrams[i], true);
}
