PPN=16
hostlist=$AZ_BATCH_HOST_LIST
rm -f tmp*
echo $AZ_BATCH_HOST_LIST > hostlist
echo "memory='10%'" > tmpa
echo "ask_delete=OFF" >> tmpa
sed 's/,/'"'"','"$PPN"'],['"'"'/g' hostlist >> tmpb
sed 's/$/'"'"','"$PPN"']]/' tmpb > tmpc
sed -e 's/^/mp_host_list=[['"'"'/' tmpc > tmpd
cat <<EOF > tmpe
mp_file_system=(DETECT,DETECT)
mp_mode = MPI
mp_mpi_implementation = IMPI
mp_mpirun_path={IMPI:'/opt/intel/impi/5.1.3.223/bin64/mpirun'}
EOF
cat tmpa tmpd tmpe > abaqus_v6.env
rm tmp*
