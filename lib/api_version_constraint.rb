class ApiVersionConstraint

  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(request)
    @default || request.headers["Accept"]
      .include?("application/vnd.odmanager.v#{@version}")
  end
end