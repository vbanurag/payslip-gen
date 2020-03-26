class SalarySlipGen
    def initialize(name, annualSalary)
        @name = name
        @annualSalary = annualSalary
    end

    def calcTax()
        tax = 0
        salaryCalc = @annualSalary
        if(@annualSalary < 20000)
            return tax
        end

        if(@annualSalary <= 40000 )
            return (20000) * 0.1
        elsif (@annualSalary <= 80000)
            tax += 20000 * 0.1
            salaryCalc -= 40000
            tax += salaryCalc * 0.2
            return tax
        elsif (@annualSalary <= 180000)
            tax += 20000 * 0.1
            salaryCalc -= 40000
            tax += 40000 * 0.2
            salaryCalc -= 40000
            tax += salaryCalc * 0.3
            return tax
        elsif (@annualSalary > 180000)
            tax += 20000 * 0.1
            salaryCalc -= 40000
            tax += 40000 * 0.2
            salaryCalc -= 40000
            tax += 100000 * 0.3
            salaryCalc -= 100000
            tax += salaryCalc * 0.4
            return tax
        end
    end
    def printSalarySlip() 
        tax = calcTax()
        perMonSal = @annualSalary / 12
        puts "Monthly Payslip for: #{@name}"
        puts "Gross Monthly Income: $#{perMonSal}"
        puts "Monthly Income Tax: $#{(tax/12).round(2)}"
        puts "Net Monthly Income: $#{(perMonSal - (tax / 12)).round(2) }"
    end
end

ob = SalarySlipGen.new("ren", 80150)

puts ob.printSalarySlip()
