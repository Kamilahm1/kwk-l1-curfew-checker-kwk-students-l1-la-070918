def time
if 8<9
  puts "Eight is less than nine"
else
  puts "Eight is not less than nine"
end
  
  

  it "should tell you if you're in trouble if it's 11" do 
    expect(simple_curfew_checker(11)).to eq("You're in trouble! Better get home quick!")
  end

  it "should tell you if you're in trouble if it's later than 11" do 
    expect(simple_curfew_checker(12)).to eq("You're in trouble! Better get home quick!")
  end

  it "should not tell you you're in trouble when time is before 11" do 
    expect(simple_curfew_checker(10)).to eq(nil)
  end
end

describe "#curfew_checker" do


  it "should say you're in trouble if it's 11" do 
    expect(curfew_checker(11)).to eq("You're in trouble! Better get home quick!")
    
  end

  it "should say you're in trouble if it's later than 11" do 
    expect(curfew_checker(12)).to eq("You're in trouble! Better get home quick!")
  end

  it "should say you can keep having fun" do 
    expect(curfew_checker(9)).to eq("Keep having fun!")
  end
end

describe "#complex_curfew_checker" do

  it "should say you're in trouble if it's 11" do 
    expect(complex_curfew_checker(11)).to eq("Time to apparate!")

  end

  it "should say you're in trouble if it's later than 11" do 
    expect(complex_curfew_checker(12)).to eq("You're in trouble! Better get home quick!")
  end

  it "should say you can keep having fun" do 
    expect(complex_curfew_checker(9)).to eq("Keep having fun!")

  end
end

describe "#deluxe_curfew_checker" do 

  it "should say Time to apparate" do 
    expect(deluxe_curfew_checker(11)).to eq("Time to apparate!")
    
  end

  it "should say you're in trouble if it's later than 11" do 
    expect(deluxe_curfew_checker(12)).to eq("You're in trouble! Better get home quick!")
  end

  it "should say you can keep having fun with the time you have left" do 
    expect(deluxe_curfew_checker(9)).to eq("You have 2 hour(s) left to keep having fun!")
  end
end

describe "#platinum_curfew_checker" do 

  it "should say you're in trouble if it's 11 and curfew is at 11" do 
    expect(platinum_curfew_checker(11, 11)).to eq("Time to apparate!")
  end

  it "should say you're in trouble if it's later than 11, which is your curfew" do 
    expect(platinum_curfew_checker(12, 11)).to eq ("You're in trouble! Better get back to Hogwarts quick!")

  end

  it "should say you can keep having if curfew is 11 and time is 9 and say there are 2 hrs left" do 
    expect(platinum_curfew_checker(9, 11)).to eq ("You have 2 hour(s) left to keep having fun!")
  end
end
