class CD
  @@cds = []
  define_method(:initialize) do |title|
    @title = title
  end

  define_method(:title) do
    @title
  end

  def CD.all
    @@cds
  end

  def save
    @@cds.push(self)
  end
end
