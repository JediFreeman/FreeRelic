class FreeRelic::HttpmetricsController < FreeRelic::BaseController
  
  def index
    @http_metrics = FreeRelic::Metric.http_metrics #.page(params[:page]).sorted
  end

  def slowest
    @http_metrics = FreeRelic::Metric.http_metrics.by_duration #.page(params[:page]).sorted
  end

  def destroy
    destroy_metric
    redirect_to free_relic_index_path
  end
end