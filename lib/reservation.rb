require 'date'
module Hotel
  class Reservation
    attr_reader :id, :start_date, :end_date, :room, :date_range 
    def initialize(id,date_range,room)
      unless id.instance_of?(Integer) && id >0
        raise ArgumentError.new("Id must be a positive integer")
      end
      @id = id
      @start_date = start_date
      @end_date = end_date
      @date_range = date_range
      @room = room   
    end

    def cost
      total_cost = date_range.count_nights * 200
    end
  end
end
