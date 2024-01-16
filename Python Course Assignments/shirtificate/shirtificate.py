from fpdf import FPDF
#Create class PDF, line everything up and make header
class PDF(FPDF):
    def setup(self):
        self.image("./shirtificate.png", 10, 70, 190)
        self.set_font("Times", "", 48)
        #self.cell(0, 57, "CS50 Shirtificate")
        #Make sure this is centered this time
        self.cell(0, 57, "CS50 Shirtificate", align="C")
        self.ln(20)

#Call class
pdf = PDF()

#Set everything up
pdf.add_page(orientation="portrait", format="a4")
pdf.set_text_color(255,255,255)
pdf.set_font("Times", size=15)

#pdf.cell(0, 213, f"{input("Name: ")} took CS50")
pdf.cell(0, 213, f"{input("Name: ")} took CS50", align="C")
pdf.output("shirtificate.pdf")
