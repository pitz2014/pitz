class GroupStatsController < ApplicationController
  # GET /group_stats
  # GET /group_stats.json
  def index
    @group_stats = GroupStat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @group_stats }
    end
  end

  # GET /group_stats/1
  # GET /group_stats/1.json
  def show
    @group_stat = GroupStat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group_stat }
    end
  end

  # GET /group_stats/new
  # GET /group_stats/new.json
  def new
    @group_stat = GroupStat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group_stat }
    end
  end

  # GET /group_stats/1/edit
  def edit
    @group_stat = GroupStat.find(params[:id])
  end

  # POST /group_stats
  # POST /group_stats.json
  def create
    @group_stat = GroupStat.new(params[:group_stat])

    respond_to do |format|
      if @group_stat.save
        format.html { redirect_to @group_stat, notice: 'Group stat was successfully created.' }
        format.json { render json: @group_stat, status: :created, location: @group_stat }
      else
        format.html { render action: "new" }
        format.json { render json: @group_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /group_stats/1
  # PUT /group_stats/1.json
  def update
    @group_stat = GroupStat.find(params[:id])

    respond_to do |format|
      if @group_stat.update_attributes(params[:group_stat])
        format.html { redirect_to @group_stat, notice: 'Group stat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_stats/1
  # DELETE /group_stats/1.json
  def destroy
    @group_stat = GroupStat.find(params[:id])
    @group_stat.destroy

    respond_to do |format|
      format.html { redirect_to group_stats_url }
      format.json { head :no_content }
    end
  end
end
