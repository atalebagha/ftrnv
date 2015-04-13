class TimesheetRowsController < ApplicationController
  before_action :set_timesheet_row, only: [:show, :edit, :update, :destroy]

  # GET /timesheet_rows
  # GET /timesheet_rows.json
  def index
    @timesheet_rows = TimesheetRow.all
  end

  # GET /timesheet_rows/1
  # GET /timesheet_rows/1.json
  def show
  end

  # GET /timesheet_rows/new
  def new
    @timesheet_row = TimesheetRow.new
  end

  # GET /timesheet_rows/1/edit
  def edit
  end

  # POST /timesheet_rows
  # POST /timesheet_rows.json
  def create
    @timesheet_row = TimesheetRow.new(timesheet_row_params)

    respond_to do |format|
      if @timesheet_row.save
        format.html { redirect_to @timesheet_row, notice: 'Timesheet row was successfully created.' }
        format.json { render :show, status: :created, location: @timesheet_row }
      else
        format.html { render :new }
        format.json { render json: @timesheet_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timesheet_rows/1
  # PATCH/PUT /timesheet_rows/1.json
  def update
    respond_to do |format|
      if @timesheet_row.update(timesheet_row_params)
        format.html { redirect_to @timesheet_row, notice: 'Timesheet row was successfully updated.' }
        format.json { render :show, status: :ok, location: @timesheet_row }
      else
        format.html { render :edit }
        format.json { render json: @timesheet_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timesheet_rows/1
  # DELETE /timesheet_rows/1.json
  def destroy
    @timesheet_row.destroy
    respond_to do |format|
      format.html { redirect_to timesheet_rows_url, notice: 'Timesheet row was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timesheet_row
      @timesheet_row = TimesheetRow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timesheet_row_params
      params.require(:timesheet_row).permit(:timesheet_id, :type, :hours, :days)
    end
end
