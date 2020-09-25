#!/bin/bash

for filename in ./*.md; do
	sed -e 's_\\cite{sugino2019mapping_[@doi:10.7554/eLife.38619]_g' -i $filename
    
    sed -e 's_\\cite{xia2019periodic_[@doi:10.1242/dev.169854]_g' -i $filename
	
    sed -e 's_\\cite{arendt2016origin_[@doi:10.1038/nrg.2016.127]_g' -i $filename

    sed -e 's_\\cite{clevers2017your_[@doi:10.1016/j.cels.2017.03.006]_g' -i $filename

    sed -e 's_\\cite{hobert2016terminal_[@doi:10.1016/bs.ctdb.2015.12.007]_g' -i $filename

    sed -e 's_\\cite{arendt2008evolution_[@doi:10.1038/nrg2416]_g' -i $filename

    sed -e 's_\\cite{vlasits2019function_[@doi:10.1016/j.conb.2018.10.011]_g' -i $filename

    sed -e 's_\\cite{marioni2017single_[@doi:10.1146/annurev-cellbio-100616-060818]_g' -i $filename

    sed -e 's_\\cite{de2019chetah_[@doi:10.1093/nar/gkz543]_g' -i $filename

    sed -e 's_\\cite{aevermann2018cell_[@doi:10.1093/hmg/ddy100]_g' -i $filename

    sed -e 's_\\cite{sachkova2019exciting_[@doi:10.1242/dev.178996]_g' -i $filename

    sed -e 's_\\cite{bakken2017cell_[@doi:10.1186/s12859-017-1977-1]_g' -i $filename

    sed -e 's_\\cite{schwartz1999definition_[@doi:10.1161/01.RES.84.10.1234]_g' -i $filename

    sed -e 's_\\cite{sato2019cellfishing_[@doi:10.1186/s13059-019-1639-x]_g' -i $filename

    sed -e 's_\\cite{laplane2019philosophy_[@doi:10.1073/pnas.1900357116]_g' -i $filename

    sed -e 's_\\cite{keeling2019meanings_[@doi:10.7554/eLife.47014]_g' -i $filename

    sed -e 's_\\cite{andersen2019philosophy_[@doi:10.7554/eLife.44929]_g' -i $filename

    sed -e 's_\\cite{leonelli2019philosophy_[@doi:10.7554/eLife.47381]_g' -i $filename

    sed -e 's_\\cite{sarntivijai2019cells_[@doi:10.1186/s12859-019-2721-9]_g' -i $filename

    sed -e 's_\\cite{ng2019heterogeneity_[@doi:10.1038/s41577-019-0141-8]_g' -i $filename

    sed -e 's_\\cite{masland2004neuronal_[@doi:10.1016/j.cub.2004.06.035]_g' -i $filename




	done	
