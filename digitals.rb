

class Display
    attr_reader :size, :digits

    def initialize(value, size=2)
        @size = size
        @digits = value
    end

    def data
    {
        '0' => {
            :first => lambda { horizontal }, 
            :second => lambda { vertical_double},
            :third => lambda { gap }, 
            :fourth => lambda { vertical_double}, 
            :fifth => lambda { horizontal }
        },
        '1' => {
            :first => lambda { gap }, 
            :second => lambda {  vertical_right},
            :third => lambda { gap }, 
            :fourth => lambda { vertical_right}, 
            :fifth => lambda { gap }
        }, 
        '2' => {
            :first => lambda { horizontal }, 
            :second => lambda { vertical_right },
            :third => lambda { horizontal }, 
            :fourth => lambda {  vertical_left}, 
            :fifth => lambda { horizontal }
        },
                
        '3' => {
            :first => lambda { horizontal }, 
            :second => lambda {  vertical_right},
            :third => lambda { horizontal }, 
            :fourth => lambda { vertical_right}, 
            :fifth => lambda { horizontal }
        }, 
        '4' => {
            :first => lambda { gap }, 
            :second => lambda { vertical_double },
            :third => lambda { horizontal }, 
            :fourth => lambda { vertical_right}, 
            :fifth => lambda { gap }
        }, 
        '5' => {
            :first => lambda { horizontal }, 
            :second => lambda { vertical_left},
            :third => lambda { horizontal }, 
            :fourth => lambda { vertical_right}, 
            :fifth => lambda { horizontal }
        }, 
        '6' => {
            :first => lambda { horizontal }, 
            :second => lambda { vertical_left},
            :third => lambda { horizontal }, 
            :fourth => lambda { vertical_double }, 
            :fifth => lambda { horizontal }
        },
        '7' => {
            :first => lambda { horizontal }, 
            :second => lambda { vertical_right},
            :third => lambda { gap }, 
            :fourth => lambda { vertical_right}, 
            :fifth => lambda { gap }
        },
        '8' => {
            :first => lambda { horizontal }, 
            :second => lambda { vertical_double },
            :third => lambda { horizontal }, 
            :fourth => lambda { vertical_double}, 
            :fifth => lambda { horizontal }
        },
        '9' => {
            :first => lambda { horizontal }, 
            :second => lambda { vertical_double },
            :third => lambda { horizontal }, 
            :fourth => lambda { vertical_right}, 
            :fifth => lambda { horizontal }
        }
    } 
    end 
    
    def show
        rows = []
        [:first, :second, :third, :fourth, :fifth].each do |level|
            count = row_repeat(level)
            count.times{ rows << level }
        end    

        rows.each do |level|
            digits.each_char do |digit|             
                data[digit][level].call
                print " " 
            end
            print "\n"
        end
    end
  
    private

    def row_repeat(level)
        count = 1
        count = size   if [:second, :fourth].include?(level)
        count
    end    


    def vertical_right 
        print " " 
        size.times{ print ' '}
        print '|'     
    end

    def vertical_left
        print '|' 
        size.times{ print ' '}
        print " "     
    end

    def vertical_double
        print '|' 
        size.times{ print ' '}
        print '|'  
    end
    
    def horizontal
        print " " 
        size.times{ print '-'}
        print " " 
    end

    def gap
        print " "
        size.times{ print ' '}
        print " "
    end
end

if ARGV[0] == '-v'
    size = ARGV[1].nil? ? 2 : ARGV[1].to_i
    value = ARGV[2].nil? ? 1234567890 : ARGV[2]
else 
    size = 2
    value = ARGV[0].nil? ? 1234567890 : ARGV[0]   
end    

display = Display.new(value,size)
display.show





