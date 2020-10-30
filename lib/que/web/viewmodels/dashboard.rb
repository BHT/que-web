module Que::Web::Viewmodels
  class Dashboard < Struct.new(:running, :finished, :scheduled, :failing)
    def initialize(stats)
      members.each do |m|
        self[m] = stats[m]
      end
    end
  end
end
