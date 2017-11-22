module Error
  class NotEligibleForCourseError
    def initialize
      super
      message = 'The chosen course is too difficult for the student'
    end
  end
end