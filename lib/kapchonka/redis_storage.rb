module Kapchonka

  class Storage
    class << self

      def save! key, value
        @redis = Kapchonka.driver
        @redis.set key.to_s, value.to_s
        @redis.expire key, Kapchonka.expire
      end

      def get key
        Kapchonka.driver.get key.to_s
      end

      def remove! key
        Kapchonka.driver.del key.to_s
      end

    end

  end

end