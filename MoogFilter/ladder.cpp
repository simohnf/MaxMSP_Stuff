#include "ladder.h"

namespace ladder {


/*******************************************************************************************************************
Copyright (c) 2012 Cycling '74

Permission is hereby granted, free of charge, to any person obtaining a copy of this software
and associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies
or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*******************************************************************************************************************/


// global noise generator
Noise noise;
static const int GENLIB_LOOPCOUNT_BAIL = 100000;


// The State struct contains all the state and procedures for the gendsp kernel
typedef struct State { 
	CommonState __commonstate;
	double m_history_4;
	double m_history_2;
	double m_history_3;
	double m_history_1;
	double samplerate;
	int vectorsize;
	int __exception;
	// re-initialize all member variables;
	inline void reset(double __sr, int __vs) { 
		__exception = 0;
		vectorsize = __vs;
		samplerate = __sr;
		m_history_1 = 0;
		m_history_2 = 0;
		m_history_3 = 0;
		m_history_4 = 0;
		genlib_reset_complete(this);
		
	};
	// the signal processing routine;
	inline int perform(t_sample ** __ins, t_sample ** __outs, int __n) { 
		vectorsize = __n;
		const t_sample * __in1 = __ins[0];
		const t_sample * __in2 = __ins[1];
		const t_sample * __in3 = __ins[2];
		t_sample * __out1 = __outs[0];
		if (__exception) { 
			return __exception;
			
		} else if (( (__in1 == 0) || (__in2 == 0) || (__in3 == 0) || (__out1 == 0) )) { 
			__exception = GENLIB_ERR_NULL_BUFFER;
			return __exception;
			
		};
		// the main sample loop;
		while ((__n--)) { 
			const double in1 = (*(__in1++));
			const double in2 = (*(__in2++));
			const double in3 = (*(__in3++));
			double a_7143 = in2;
			double a_7133 = a_7143;
			double a_7148 = a_7143;
			double a_7126 = a_7143;
			double K_7115 = in3;
			double mul_7111 = (K_7115 * -1);
			double a_7142 = a_7143;
			double K_7122 = K_7115;
			double a_7132 = a_7143;
			double mul_7131 = (m_history_3 * a_7132);
			double add_7125 = (m_history_4 + mul_7131);
			double mul_7141 = (a_7142 * a_7142);
			double mul_7138 = (m_history_2 * mul_7141);
			double mul_7140 = (mul_7141 * a_7142);
			double mul_7139 = (mul_7140 * a_7142);
			double mul_7118 = (mul_7139 * K_7122);
			double add_7119 = (1 + mul_7118);
			double div_7120 = safediv(1, add_7119);
			double alpha_7117 = div_7120;
			double mul_7149 = (m_history_1 * mul_7140);
			double add_7123 = (mul_7138 + mul_7149);
			double add_7124 = (add_7125 + add_7123);
			double mul_7116 = (add_7124 * mul_7111);
			double add_7114 = (in1 + mul_7116);
			double tanh_7112 = tanh(add_7114);
			double mul_7113 = (tanh_7112 * alpha_7117);
			double sub_7152 = (mul_7113 - m_history_1);
			double mul_7150 = (sub_7152 * a_7148);
			double add_7151 = (mul_7150 + m_history_1);
			double sub_7146 = (add_7151 - m_history_2);
			double mul_7144 = (sub_7146 * a_7143);
			double add_7145 = (mul_7144 + m_history_2);
			double sub_7136 = (add_7145 - m_history_3);
			double mul_7134 = (sub_7136 * a_7133);
			double add_7135 = (mul_7134 + m_history_3);
			double sub_7129 = (add_7135 - m_history_4);
			double mul_7127 = (sub_7129 * a_7126);
			double add_7128 = (mul_7127 + m_history_4);
			double out1 = add_7128;
			double history_7153_next_9255 = add_7151;
			double history_7147_next_9256 = add_7145;
			double history_7137_next_9257 = add_7135;
			double history_7130_next_9258 = add_7128;
			m_history_1 = history_7153_next_9255;
			m_history_4 = history_7130_next_9258;
			m_history_3 = history_7137_next_9257;
			m_history_2 = history_7147_next_9256;
			// assign results to output buffer;
			(*(__out1++)) = out1;
			
		};
		return __exception;
		
	};
	
} State;


/// 
///	Configuration for the genlib API
///

/// Number of signal inputs and outputs 

int gen_kernel_numins = 3;
int gen_kernel_numouts = 1;

int num_inputs() { return gen_kernel_numins; }
int num_outputs() { return gen_kernel_numouts; }
int num_params() { return 0; }

/// Assistive lables for the signal inputs and outputs 

const char * gen_kernel_innames[] = { "in1", "in2", "in3" };
const char * gen_kernel_outnames[] = { "out1" };

/// Invoke the signal process of a State object

int perform(CommonState *cself, t_sample **ins, long numins, t_sample **outs, long numouts, long n) { 
	State * self = (State *)cself;
	return self->perform(ins, outs, n);
}

/// Reset all parameters and stateful operators of a State object

void reset(CommonState *cself) { 
	State * self = (State *)cself;
	self->reset(cself->sr, cself->vs); 
}

/// Set a parameter of a State object 

void setparameter(CommonState *cself, long index, double value, void *ref) {
	State * self = (State *)cself;
	switch (index) {
		
		default: break;
	}
}

/// Get the value of a parameter of a State object 

void getparameter(CommonState *cself, long index, double *value) {
	State *self = (State *)cself;
	switch (index) {
		
		default: break;
	}
}

/// Allocate and configure a new State object and it's internal CommonState:

void * create(double sr, long vs) {
	State *self = new State;
	self->reset(sr, vs);
	ParamInfo *pi;
	self->__commonstate.inputnames = gen_kernel_innames;
	self->__commonstate.outputnames = gen_kernel_outnames;
	self->__commonstate.numins = gen_kernel_numins;
	self->__commonstate.numouts = gen_kernel_numouts;
	self->__commonstate.sr = sr;
	self->__commonstate.vs = vs;
	self->__commonstate.params = 0;
	self->__commonstate.numparams = 0;
	
	return self;
}

/// Release all resources and memory used by a State object:

void destroy(CommonState *cself) { 
	State * self = (State *)cself;
	
	delete self; 
}


} // ladder::
