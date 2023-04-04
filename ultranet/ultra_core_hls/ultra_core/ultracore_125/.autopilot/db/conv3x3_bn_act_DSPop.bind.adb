<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>conv3x3_bn_act_DSPop</name>
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
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>in.V.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>128</bitwidth>
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
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>out.V.V</originalName>
						<rtlName></rtlName>
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
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>reps</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
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
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
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
						<id>47</id>
						<name>reps_c_i</name>
						<fileName>./src/conv2d_DSPopt.hpp</fileName>
						<fileDirectory>/mnt/delta/Descartes/Git/DACSDC2021</fileDirectory>
						<lineNumber>503</lineNumber>
						<contextFuncName>conv3x3_bn_act_DSPopt&amp;lt;80, 160, 16, 4, 32, 4, 4, 16, 14, 23, 16, 4, 16, 4, 8&amp;gt;</contextFuncName>
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
											<first>./src/conv2d_DSPopt.hpp</first>
											<second>conv3x3_bn_act_DSPopt&amp;lt;80, 160, 16, 4, 32, 4, 4, 16, 14, 23, 16, 4, 16, 4, 8&amp;gt;</second>
										</first>
										<second>503</second>
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
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>61</item>
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
						<id>48</id>
						<name>padding_out_V_V</name>
						<fileName>./src/conv2d_DSPopt.hpp</fileName>
						<fileDirectory>/mnt/delta/Descartes/Git/DACSDC2021</fileDirectory>
						<lineNumber>512</lineNumber>
						<contextFuncName>conv3x3_bn_act_DSPopt&amp;lt;80, 160, 16, 4, 32, 4, 4, 16, 14, 23, 16, 4, 16, 4, 8&amp;gt;</contextFuncName>
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
											<first>./src/conv2d_DSPopt.hpp</first>
											<second>conv3x3_bn_act_DSPopt&amp;lt;80, 160, 16, 4, 32, 4, 4, 16, 14, 23, 16, 4, 16, 4, 8&amp;gt;</second>
										</first>
										<second>512</second>
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
						<originalName>padding_out.V.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>128</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>62</item>
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
						<id>56</id>
						<name>_ln503</name>
						<fileName>./src/conv2d_DSPopt.hpp</fileName>
						<fileDirectory>/mnt/delta/Descartes/Git/DACSDC2021</fileDirectory>
						<lineNumber>503</lineNumber>
						<contextFuncName>conv3x3_bn_act_DSPopt&amp;lt;80, 160, 16, 4, 32, 4, 4, 16, 14, 23, 16, 4, 16, 4, 8&amp;gt;</contextFuncName>
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
											<first>./src/conv2d_DSPopt.hpp</first>
											<second>conv3x3_bn_act_DSPopt&amp;lt;80, 160, 16, 4, 32, 4, 4, 16, 14, 23, 16, 4, 16, 4, 8&amp;gt;</second>
										</first>
										<second>503</second>
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
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>64</item>
					<item>65</item>
					<item>66</item>
					<item>67</item>
					<item>68</item>
					<item>69</item>
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
						<id>57</id>
						<name>_ln517</name>
						<fileName>./src/conv2d_DSPopt.hpp</fileName>
						<fileDirectory>/mnt/delta/Descartes/Git/DACSDC2021</fileDirectory>
						<lineNumber>517</lineNumber>
						<contextFuncName>conv3x3_bn_act_DSPopt&amp;lt;80, 160, 16, 4, 32, 4, 4, 16, 14, 23, 16, 4, 16, 4, 8&amp;gt;</contextFuncName>
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
											<first>./src/conv2d_DSPopt.hpp</first>
											<second>conv3x3_bn_act_DSPopt&amp;lt;80, 160, 16, 4, 32, 4, 4, 16, 14, 23, 16, 4, 16, 4, 8&amp;gt;</second>
										</first>
										<second>517</second>
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
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>26</count>
					<item_version>0</item_version>
					<item>71</item>
					<item>72</item>
					<item>73</item>
					<item>74</item>
					<item>75</item>
					<item>76</item>
					<item>77</item>
					<item>78</item>
					<item>79</item>
					<item>80</item>
					<item>81</item>
					<item>82</item>
					<item>83</item>
					<item>84</item>
					<item>85</item>
					<item>86</item>
					<item>87</item>
					<item>88</item>
					<item>89</item>
					<item>90</item>
					<item>91</item>
					<item>92</item>
					<item>93</item>
					<item>94</item>
					<item>238</item>
					<item>239</item>
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
						<id>58</id>
						<name>_ln90</name>
						<fileName>./src/ultranet.cpp</fileName>
						<fileDirectory>/mnt/delta/Descartes/Git/DACSDC2021</fileDirectory>
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
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
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
						<id>60</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
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
						<id>63</id>
						<name>conv3padding711</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:conv3padding711&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_12">
				<Value>
					<Obj>
						<type>2</type>
						<id>70</id>
						<name>convDSPOpt_5</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:convDSPOpt.5&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_13">
				<Obj>
					<type>3</type>
					<id>59</id>
					<name>conv3x3_bn_act_DSPop</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>5</count>
					<item_version>0</item_version>
					<item>47</item>
					<item>48</item>
					<item>56</item>
					<item>57</item>
					<item>58</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>34</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_14">
				<id>61</id>
				<edge_type>1</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>47</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_15">
				<id>62</id>
				<edge_type>1</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>48</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_16">
				<id>64</id>
				<edge_type>1</edge_type>
				<source_obj>63</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_17">
				<id>65</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_18">
				<id>66</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_19">
				<id>67</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>68</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>69</id>
				<edge_type>1</edge_type>
				<source_obj>47</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>71</id>
				<edge_type>1</edge_type>
				<source_obj>70</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>72</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>73</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>74</id>
				<edge_type>1</edge_type>
				<source_obj>47</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>77</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>79</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>85</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>87</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>90</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>91</id>
				<edge_type>1</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>92</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>94</id>
				<edge_type>1</edge_type>
				<source_obj>44</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>238</id>
				<edge_type>4</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>239</id>
				<edge_type>4</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_48">
			<mId>1</mId>
			<mTag>conv3x3_bn_act_DSPop</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>59</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>-1</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_49">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>2</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_50">
						<type>0</type>
						<name>conv3padding711_U0</name>
						<ssdmobj_id>56</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>5</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_51">
								<port class_id="29" tracking_level="1" version="0" object_id="_52">
									<name>reps</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_53">
									<type>0</type>
									<name>conv3padding711_U0</name>
									<ssdmobj_id>56</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_54">
								<port class_id_reference="29" object_id="_55">
									<name>reps_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_53"></inst>
							</item>
							<item class_id_reference="28" object_id="_56">
								<port class_id_reference="29" object_id="_57">
									<name>in_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_53"></inst>
							</item>
							<item class_id_reference="28" object_id="_58">
								<port class_id_reference="29" object_id="_59">
									<name>padding_out_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_53"></inst>
							</item>
							<item class_id_reference="28" object_id="_60">
								<port class_id_reference="29" object_id="_61">
									<name>reps_c_i</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_53"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_62">
						<type>0</type>
						<name>convDSPOpt_5_U0</name>
						<ssdmobj_id>57</ssdmobj_id>
						<pins>
							<count>23</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_63">
								<port class_id_reference="29" object_id="_64">
									<name>vec_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_65">
									<type>0</type>
									<name>convDSPOpt_5_U0</name>
									<ssdmobj_id>57</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_66">
								<port class_id_reference="29" object_id="_67">
									<name>out_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_68">
								<port class_id_reference="29" object_id="_69">
									<name>reps</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_70">
								<port class_id_reference="29" object_id="_71">
									<name>conv_1_inc_new_V_0</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_72">
								<port class_id_reference="29" object_id="_73">
									<name>conv_1_bias_new_V_0</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_74">
								<port class_id_reference="29" object_id="_75">
									<name>conv_1_inc_new_V_1</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_76">
								<port class_id_reference="29" object_id="_77">
									<name>conv_1_bias_new_V_1</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_78">
								<port class_id_reference="29" object_id="_79">
									<name>conv_1_inc_new_V_2</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_80">
								<port class_id_reference="29" object_id="_81">
									<name>conv_1_bias_new_V_2</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_82">
								<port class_id_reference="29" object_id="_83">
									<name>conv_1_inc_new_V_3</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_84">
								<port class_id_reference="29" object_id="_85">
									<name>conv_1_bias_new_V_3</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_86">
								<port class_id_reference="29" object_id="_87">
									<name>conv_1_w_new_V_0_2</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_88">
								<port class_id_reference="29" object_id="_89">
									<name>conv_1_w_new_V_0_1</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_90">
								<port class_id_reference="29" object_id="_91">
									<name>conv_1_w_new_V_0_0</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_92">
								<port class_id_reference="29" object_id="_93">
									<name>conv_1_w_new_V_1_2</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_94">
								<port class_id_reference="29" object_id="_95">
									<name>conv_1_w_new_V_1_1</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_96">
								<port class_id_reference="29" object_id="_97">
									<name>conv_1_w_new_V_1_0</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_98">
								<port class_id_reference="29" object_id="_99">
									<name>conv_1_w_new_V_2_2</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_100">
								<port class_id_reference="29" object_id="_101">
									<name>conv_1_w_new_V_2_1</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_102">
								<port class_id_reference="29" object_id="_103">
									<name>conv_1_w_new_V_2_0</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_104">
								<port class_id_reference="29" object_id="_105">
									<name>conv_1_w_new_V_3_2</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_106">
								<port class_id_reference="29" object_id="_107">
									<name>conv_1_w_new_V_3_1</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
							<item class_id_reference="28" object_id="_108">
								<port class_id_reference="29" object_id="_109">
									<name>conv_1_w_new_V_3_0</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_65"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>2</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_110">
						<type>1</type>
						<name>padding_out_V_V</name>
						<ssdmobj_id>48</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>128</bitwidth>
						<source class_id_reference="28" object_id="_111">
							<port class_id_reference="29" object_id="_112">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_53"></inst>
						</source>
						<sink class_id_reference="28" object_id="_113">
							<port class_id_reference="29" object_id="_114">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_65"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_115">
						<type>1</type>
						<name>reps_c_i</name>
						<ssdmobj_id>47</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_116">
							<port class_id_reference="29" object_id="_117">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_53"></inst>
						</source>
						<sink class_id_reference="28" object_id="_118">
							<port class_id_reference="29" object_id="_119">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_65"></inst>
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
	<fsm class_id="34" tracking_level="1" version="0" object_id="_120">
		<states class_id="35" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="36" tracking_level="1" version="0" object_id="_121">
				<id>1</id>
				<operations class_id="37" tracking_level="0" version="0">
					<count>3</count>
					<item_version>0</item_version>
					<item class_id="38" tracking_level="1" version="0" object_id="_122">
						<id>47</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_123">
						<id>48</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_124">
						<id>56</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_125">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_126">
						<id>56</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_127">
				<id>3</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_128">
						<id>57</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_129">
				<id>4</id>
				<operations>
					<count>11</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_130">
						<id>45</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_131">
						<id>46</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_132">
						<id>49</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_133">
						<id>50</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_134">
						<id>51</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_135">
						<id>52</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_136">
						<id>53</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_137">
						<id>54</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_138">
						<id>55</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_139">
						<id>57</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_140">
						<id>58</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="39" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="40" tracking_level="1" version="0" object_id="_141">
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
			<item class_id_reference="40" object_id="_142">
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
			<item class_id_reference="40" object_id="_143">
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
	<res class_id="-1"></res>
	<node_label_latency class_id="45" tracking_level="0" version="0">
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="46" tracking_level="0" version="0">
			<first>47</first>
			<second class_id="47" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>48</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>56</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>57</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>58</first>
			<second>
				<first>3</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="48" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="49" tracking_level="0" version="0">
			<first>59</first>
			<second class_id="50" tracking_level="0" version="0">
				<first>0</first>
				<second>3</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="51" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="52" tracking_level="1" version="0" object_id="_144">
			<region_name>conv3x3_bn_act_DSPop</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>59</item>
			</basic_blocks>
			<nodes>
				<count>14</count>
				<item_version>0</item_version>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="53" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="54" tracking_level="0" version="0">
			<first>82</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>47</item>
			</second>
		</item>
		<item>
			<first>86</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>48</item>
			</second>
		</item>
		<item>
			<first>90</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>57</item>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>138</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>56</item>
				<item>56</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="56" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="57" tracking_level="0" version="0">
			<first>padding_out_V_V_fu_86</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>48</item>
			</second>
		</item>
		<item>
			<first>reps_c_i_fu_82</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>47</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>2</count>
		<item_version>0</item_version>
		<item>
			<first>grp_conv3padding711_fu_138</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>56</item>
				<item>56</item>
			</second>
		</item>
		<item>
			<first>grp_convDSPOpt_5_fu_90</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>57</item>
				<item>57</item>
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
	<dp_mem_port_nodes class_id="58" tracking_level="0" version="0">
		<count>20</count>
		<item_version>0</item_version>
		<item class_id="59" tracking_level="0" version="0">
			<first class_id="60" tracking_level="0" version="0">
				<first>conv_1_bias_new_V_0</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_bias_new_V_1</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_bias_new_V_2</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_bias_new_V_3</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_inc_new_V_0</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_inc_new_V_1</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_inc_new_V_2</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_inc_new_V_3</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_0_0</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_0_1</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_0_2</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_1_0</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_1_1</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_1_2</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_2_0</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_2_1</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_2_2</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_3_0</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_3_1</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>conv_1_w_new_V_3_2</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>2</count>
		<item_version>0</item_version>
		<item>
			<first>150</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>47</item>
			</second>
		</item>
		<item>
			<first>156</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>48</item>
			</second>
		</item>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>2</count>
		<item_version>0</item_version>
		<item>
			<first>padding_out_V_V_reg_156</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>48</item>
			</second>
		</item>
		<item>
			<first>reps_c_i_reg_150</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>47</item>
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
	<dp_port_io_nodes class_id="61" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="62" tracking_level="0" version="0">
			<first>in_V_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>56</item>
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
						<item>57</item>
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
						<item>56</item>
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
						<item>56</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="63" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="64" tracking_level="0" version="0">
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
			<first>47</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>48</first>
			<second>FIFO</second>
		</item>
	</node2core>
</syndb>
</boost_serialization>

