class ConditionLog < ApplicationRecord
    enum :work_difficulty, {
        light: 0,
        normal: 1,
        hard: 2,
        very_hard: 3
    }

    enum :mood, {
        no_motivation: 0,
        depressed: 1,
        normal: 2,
        energetic: 3
    }

    validates :fatigue, presence: true, inclusion: { in: 0..100 }
    validates :stress, presence: true, inclusion: { in: 0..100 }
    validates :sleep_hours, presence: true, numericality: {greater_than_or_equal_to: 0}
    validates :daytime_outings, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0 }
    validates :night_outings, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0 }
    validates :work_difficulty, presence: true
    validates :mood, presence: true
    validates :recorded_at, presence: true

    def effective_days
        daytime_outings * 1.0 + night_outings *0.5 
    end
end
