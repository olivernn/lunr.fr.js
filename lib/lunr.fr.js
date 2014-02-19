lunr.fr = function () {
  this.pipeline = new lunr.Pipeline
  this.pipeline.add(
    lunr.fr.stopWordFilter,
    lunr.fr.stemmer
  )
}
