"""
    read_linked_csv(filename)

Read a linked_csv into a `DataFrame`. Assumes the `.csv` file is in the `linked_results` folder.
"""
function read_linked_csv(filename)
    df = CSV.read("linked_results/$filename", DataFrame)
    return df
end

"""
    collapse_time_data(df)

Collapse each time-series microbot trajectory into a single row of data for each microbot.

For full description of each output variable, see these docs (ref needed).
"""
# function collapse_time_data(df)
#     @chain df begin  # start a processing pipeline. each line takes the result of the last.
	
#         # First, collapse the time series data
#         groupby(:particle_u)  # mini-dataframes for each particle
#         @combine(
#             :filename = first(:filename),
#             :FPS = first(:FPS),
#             :V = mean(:dv_m), # μm/s,
#             :Vx = mean(:dx_m),
#             :Vy = mean(:dy_m),
#             :Area_m_mean = mean(:Area_m),  # μm^2
#             #:Ω_est = estimate_omega(:time, :Major_m),  # Hz
#             :R = maximum(:Major_m) / 2,  # μm
#             :Circularity = mean(:Circ),
#         )

#     end
# end
