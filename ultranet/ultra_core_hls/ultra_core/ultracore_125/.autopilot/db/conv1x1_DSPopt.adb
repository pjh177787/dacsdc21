<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>conv1x1_DSPopt</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>in_V_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>in.V.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>16</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>out_V_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>out.V.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>reps</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_4">
          <Value>
            <Obj>
              <type>1</type>
              <id>4</id>
              <name>reps_out</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>15</id>
              <name>reps_c_i</name>
              <fileName>./src/conv1x1DSP2.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>263</lineNumber>
              <contextFuncName>conv1x1_DSPopt&amp;lt;10, 20, 64, 4, 36, 8, 13, 32, 4, 2, 2&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>2</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>./src/conv1x1DSP2.hpp</first>
                        <second>conv1x1_DSPopt&amp;lt;10, 20, 64, 4, 36, 8, 13, 32, 4, 2, 2&amp;gt;</second>
                      </first>
                      <second>263</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>reps_c_i_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>29</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>16</id>
              <name>conv1in_V_V</name>
              <fileName>./src/conv1x1DSP2.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>265</lineNumber>
              <contextFuncName>conv1x1_DSPopt&amp;lt;10, 20, 64, 4, 36, 8, 13, 32, 4, 2, 2&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/conv1x1DSP2.hpp</first>
                        <second>conv1x1_DSPopt&amp;lt;10, 20, 64, 4, 36, 8, 13, 32, 4, 2, 2&amp;gt;</second>
                      </first>
                      <second>265</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>conv1in.V.V</originalName>
              <rtlName>conv1in_V_V_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>16</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>30</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>24</id>
              <name>_ln263</name>
              <fileName>./src/conv1x1DSP2.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>263</lineNumber>
              <contextFuncName>conv1x1_DSPopt&amp;lt;10, 20, 64, 4, 36, 8, 13, 32, 4, 2, 2&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/conv1x1DSP2.hpp</first>
                        <second>conv1x1_DSPopt&amp;lt;10, 20, 64, 4, 36, 8, 13, 32, 4, 2, 2&amp;gt;</second>
                      </first>
                      <second>263</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>conv1x1convert718_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>6</count>
            <item_version>0</item_version>
            <item>32</item>
            <item>33</item>
            <item>34</item>
            <item>35</item>
            <item>36</item>
            <item>37</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>3</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_8">
          <Value>
            <Obj>
              <type>0</type>
              <id>25</id>
              <name>_ln273</name>
              <fileName>./src/conv1x1DSP2.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>273</lineNumber>
              <contextFuncName>conv1x1_DSPopt&amp;lt;10, 20, 64, 4, 36, 8, 13, 32, 4, 2, 2&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/conv1x1DSP2.hpp</first>
                        <second>conv1x1_DSPopt&amp;lt;10, 20, 64, 4, 36, 8, 13, 32, 4, 2, 2&amp;gt;</second>
                      </first>
                      <second>273</second>
                    </item>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>conv1x1DSP2_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>10</count>
            <item_version>0</item_version>
            <item>39</item>
            <item>40</item>
            <item>41</item>
            <item>42</item>
            <item>43</item>
            <item>44</item>
            <item>45</item>
            <item>46</item>
            <item>190</item>
            <item>191</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>4</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_9">
          <Value>
            <Obj>
              <type>0</type>
              <id>26</id>
              <name>_ln90</name>
              <fileName>./src/ultranet.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>90</lineNumber>
              <contextFuncName>do_compute2</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/mnt/delta/Descartes/Git/DACSDC2021</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>./src/ultranet.cpp</first>
                        <second>do_compute2</second>
                      </first>
                      <second>90</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>5</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_10">
          <Value>
            <Obj>
              <type>2</type>
              <id>28</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>1</content>
        </item>
        <item class_id_reference="16" object_id="_11">
          <Value>
            <Obj>
              <type>2</type>
              <id>31</id>
              <name>conv1x1convert718</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:conv1x1convert718&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_12">
          <Value>
            <Obj>
              <type>2</type>
              <id>38</id>
              <name>conv1x1DSP2</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:conv1x1DSP2&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_13">
          <Obj>
            <type>3</type>
            <id>27</id>
            <name>conv1x1_DSPopt</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>5</count>
            <item_version>0</item_version>
            <item>15</item>
            <item>16</item>
            <item>24</item>
            <item>25</item>
            <item>26</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>18</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_14">
          <id>29</id>
          <edge_type>1</edge_type>
          <source_obj>28</source_obj>
          <sink_obj>15</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_15">
          <id>30</id>
          <edge_type>1</edge_type>
          <source_obj>28</source_obj>
          <sink_obj>16</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_16">
          <id>32</id>
          <edge_type>1</edge_type>
          <source_obj>31</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_17">
          <id>33</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_18">
          <id>34</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>35</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>36</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>37</id>
          <edge_type>1</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>39</id>
          <edge_type>1</edge_type>
          <source_obj>38</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>40</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>41</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>42</id>
          <edge_type>1</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>43</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>44</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>45</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>46</id>
          <edge_type>1</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>190</id>
          <edge_type>4</edge_type>
          <source_obj>24</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_31">
          <id>191</id>
          <edge_type>4</edge_type>
          <source_obj>24</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_32">
        <mId>1</mId>
        <mTag>conv1x1_DSPopt</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>27</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>-1</mMinLatency>
        <mMaxLatency>-1</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="23" tracking_level="1" version="0" object_id="_33">
          <port_list class_id="24" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </port_list>
          <process_list class_id="25" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_34">
              <type>0</type>
              <name>conv1x1convert718_U0</name>
              <ssdmobj_id>24</ssdmobj_id>
              <pins class_id="27" tracking_level="0" version="0">
                <count>5</count>
                <item_version>0</item_version>
                <item class_id="28" tracking_level="1" version="0" object_id="_35">
                  <port class_id="29" tracking_level="1" version="0" object_id="_36">
                    <name>reps</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id="30" tracking_level="1" version="0" object_id="_37">
                    <type>0</type>
                    <name>conv1x1convert718_U0</name>
                    <ssdmobj_id>24</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_38">
                  <port class_id_reference="29" object_id="_39">
                    <name>reps_out</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_37"/>
                </item>
                <item class_id_reference="28" object_id="_40">
                  <port class_id_reference="29" object_id="_41">
                    <name>in_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_37"/>
                </item>
                <item class_id_reference="28" object_id="_42">
                  <port class_id_reference="29" object_id="_43">
                    <name>conv1in_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_37"/>
                </item>
                <item class_id_reference="28" object_id="_44">
                  <port class_id_reference="29" object_id="_45">
                    <name>reps_c_i</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_37"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_46">
              <type>0</type>
              <name>conv1x1DSP2_U0</name>
              <ssdmobj_id>25</ssdmobj_id>
              <pins>
                <count>7</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_47">
                  <port class_id_reference="29" object_id="_48">
                    <name>in_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_49">
                    <type>0</type>
                    <name>conv1x1DSP2_U0</name>
                    <ssdmobj_id>25</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_50">
                  <port class_id_reference="29" object_id="_51">
                    <name>out_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_49"/>
                </item>
                <item class_id_reference="28" object_id="_52">
                  <port class_id_reference="29" object_id="_53">
                    <name>reps</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_49"/>
                </item>
                <item class_id_reference="28" object_id="_54">
                  <port class_id_reference="29" object_id="_55">
                    <name>conv_8_bias_new_V_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_49"/>
                </item>
                <item class_id_reference="28" object_id="_56">
                  <port class_id_reference="29" object_id="_57">
                    <name>conv_8_bias_new_V_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_49"/>
                </item>
                <item class_id_reference="28" object_id="_58">
                  <port class_id_reference="29" object_id="_59">
                    <name>conv_8_w_new_V_0</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_49"/>
                </item>
                <item class_id_reference="28" object_id="_60">
                  <port class_id_reference="29" object_id="_61">
                    <name>conv_8_w_new_V_1</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_49"/>
                </item>
              </pins>
            </item>
          </process_list>
          <channel_list class_id="31" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="32" tracking_level="1" version="0" object_id="_62">
              <type>1</type>
              <name>conv1in_V_V</name>
              <ssdmobj_id>16</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>16</bitwidth>
              <source class_id_reference="28" object_id="_63">
                <port class_id_reference="29" object_id="_64">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_37"/>
              </source>
              <sink class_id_reference="28" object_id="_65">
                <port class_id_reference="29" object_id="_66">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_49"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_67">
              <type>1</type>
              <name>reps_c_i</name>
              <ssdmobj_id>15</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>32</bitwidth>
              <source class_id_reference="28" object_id="_68">
                <port class_id_reference="29" object_id="_69">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_37"/>
              </source>
              <sink class_id_reference="28" object_id="_70">
                <port class_id_reference="29" object_id="_71">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_49"/>
              </sink>
            </item>
          </channel_list>
          <net_list class_id="33" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </net_list>
        </mDfPipe>
      </item>
    </cdfg_regions>
    <fsm class_id="34" tracking_level="1" version="0" object_id="_72">
      <states class_id="35" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="1" version="0" object_id="_73">
          <id>1</id>
          <operations class_id="37" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="1" version="0" object_id="_74">
              <id>15</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_75">
              <id>16</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_76">
              <id>24</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_77">
          <id>2</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_78">
              <id>24</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_79">
          <id>3</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_80">
              <id>25</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_81">
          <id>4</id>
          <operations>
            <count>11</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_82">
              <id>13</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_83">
              <id>14</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_84">
              <id>17</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_85">
              <id>18</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_86">
              <id>19</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_87">
              <id>20</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_88">
              <id>21</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_89">
              <id>22</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_90">
              <id>23</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_91">
              <id>25</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="38" object_id="_92">
              <id>26</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="39" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="1" version="0" object_id="_93">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="41" tracking_level="0" version="0">
            <id>-1</id>
            <sop class_id="42" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="43" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_94">
          <inState>2</inState>
          <outState>3</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_95">
          <inState>3</inState>
          <outState>4</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="44" tracking_level="1" version="0" object_id="_96">
      <dp_component_resource class_id="45" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="46" tracking_level="0" version="0">
          <first>conv1x1DSP2_U0 (conv1x1DSP2)</first>
          <second class_id="47" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="48" tracking_level="0" version="0">
              <first>BRAM</first>
              <second>2</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>3</second>
            </item>
            <item>
              <first>FF</first>
              <second>1318</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1241</second>
            </item>
          </second>
        </item>
        <item>
          <first>conv1x1convert718_U0 (conv1x1convert718)</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>BRAM</first>
              <second>2</second>
            </item>
            <item>
              <first>FF</first>
              <second>293</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1032</second>
            </item>
            <item>
              <first>URAM</first>
              <second>0</second>
            </item>
          </second>
        </item>
        <item>
          <first>start_for_conv1x1dWL_U (start_for_conv1x1dWL)</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>ap_idle ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_sync_continue ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_sync_done ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>conv1in_V_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>16</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>32</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>28</second>
            </item>
          </second>
        </item>
        <item>
          <first>reps_c_i_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>32</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>64</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>44</second>
            </item>
          </second>
        </item>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>real_start</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>9</second>
            </item>
          </second>
        </item>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>start_once_reg</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>conv1x1DSP2_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>conv1x1convert718_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_conv1x1dWL_U</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="49" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="50" tracking_level="0" version="0">
          <first>conv1x1DSP2_U0 (conv1x1DSP2)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>25</item>
          </second>
        </item>
        <item>
          <first>conv1x1convert718_U0 (conv1x1convert718)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>24</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>conv1in_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>80</item>
          </second>
        </item>
        <item>
          <first>reps_c_i_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>91</item>
          </second>
        </item>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="51" tracking_level="0" version="0">
      <count>5</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>15</first>
        <second class_id="53" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>16</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>24</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>25</first>
        <second>
          <first>2</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>26</first>
        <second>
          <first>3</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>27</first>
        <second class_id="56" tracking_level="0" version="0">
          <first>0</first>
          <second>3</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="57" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="1" version="0" object_id="_97">
        <region_name>conv1x1_DSPopt</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>27</item>
        </basic_blocks>
        <nodes>
          <count>14</count>
          <item_version>0</item_version>
          <item>13</item>
          <item>14</item>
          <item>15</item>
          <item>16</item>
          <item>17</item>
          <item>18</item>
          <item>19</item>
          <item>20</item>
          <item>21</item>
          <item>22</item>
          <item>23</item>
          <item>24</item>
          <item>25</item>
          <item>26</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="59" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="60" tracking_level="0" version="0">
        <first>50</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>15</item>
        </second>
      </item>
      <item>
        <first>54</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>16</item>
        </second>
      </item>
      <item>
        <first>58</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>25</item>
          <item>25</item>
        </second>
      </item>
      <item>
        <first>74</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>24</item>
          <item>24</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="62" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="63" tracking_level="0" version="0">
        <first>conv1in_V_V_fu_54</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>16</item>
        </second>
      </item>
      <item>
        <first>reps_c_i_fu_50</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>15</item>
        </second>
      </item>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>grp_conv1x1DSP2_fu_58</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>25</item>
          <item>25</item>
        </second>
      </item>
      <item>
        <first>grp_conv1x1convert718_fu_74</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>24</item>
          <item>24</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="64" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="65" tracking_level="0" version="0">
        <first class_id="66" tracking_level="0" version="0">
          <first>conv_8_bias_new_V_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>25</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_8_bias_new_V_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>25</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_8_w_new_V_0</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>25</item>
        </second>
      </item>
      <item>
        <first>
          <first>conv_8_w_new_V_1</first>
          <second>100</second>
        </first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>25</item>
        </second>
      </item>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>86</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>15</item>
        </second>
      </item>
      <item>
        <first>92</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>16</item>
        </second>
      </item>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>conv1in_V_V_reg_92</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>16</item>
        </second>
      </item>
      <item>
        <first>reps_c_i_reg_86</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>15</item>
        </second>
      </item>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="67" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="68" tracking_level="0" version="0">
        <first>in_V_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>24</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>out_V_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>25</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>reps</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>24</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>reps_out</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>24</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="69" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="70" tracking_level="0" version="0">
        <first>1</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>2</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>3</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>4</first>
        <second>FIFO</second>
      </item>
    </port2core>
    <node2core>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>15</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>16</first>
        <second>FIFO</second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>
