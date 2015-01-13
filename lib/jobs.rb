class Jobs

# INSTANCE METHODS

  define_method(:initialize) do |title, company_name, city|
    @title = title;
    @company_name = company_name
    @city = city

    @description_job = [@title, @company_name, @city]
  end


  define_method(:save) do
      @@descriptions.push(@description_job)
  end

  define_method(:description_job) do
    @description_job
  end

# CLASS METHODS

@@descriptions = []

  define_singleton_method(:description_all) do
    @@descriptions
  end

  define_singleton_method(:clear) do
    @@descriptions = []
  end

  define_singleton_method(:delete_last_entry) do
    @@descriptions.pop()
end
end
