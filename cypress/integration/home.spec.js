describe('visit homepage', () => {
  beforeEach(() => {
    cy.visit('localhost:3000')
  })

  it('loads the homepage', () => {
    cy.get("h2").should("contain", "Where you can find any plants!"); // Works!
  })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });

})
