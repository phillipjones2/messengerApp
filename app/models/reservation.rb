class Reservation < ActiveRecord::Base
  before_save :check_availability

  TOTAL_TABLES = 10

  validates :name, presence: true
  validates :reservation_date, presence: true
  validates :reservation_time, presence: true
  validates :num_tables, presence: true

  private

  def check_availability
    table_count = Reservation.where(reservation_date:self.reservation_date,reservation_time:self.reservation_time).sum(:num_tables)
    if table_count + self.num_tables > TOTAL_TABLES
      return false
    end
  end

end
