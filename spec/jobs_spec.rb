require('rspec')
require('jobs')
require('pry')

describe(Jobs) do
  before() do
    Jobs.clear()
  end
  describe("#description_all") do
    it("returns all jobs") do
      test_job = Jobs.new("Cashier", "Mcdonalds", "Timbuktu")
      test_job.save()
      expect(Jobs.description_all()).to(eq([["Cashier", "Mcdonalds", "Timbuktu"]]))
    end
  end

  describe(".clear") do
    it("clears all jobs") do
      test_job = Jobs.new("Cashier", "Mcdonalds", "Timbuktu")
      test_job.save()
      Jobs.clear()
      expect(Jobs.description_all()).to(eq([]))
    end
  end
end
