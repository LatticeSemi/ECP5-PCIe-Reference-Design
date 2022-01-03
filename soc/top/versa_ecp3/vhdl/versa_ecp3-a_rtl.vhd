
--    
--    Copyright Ingenieurbuero Gardiner, 2021
--       https://www.ib-gardiner.eu
--       techsupport@ib-gardiner.eu
--
--    All Rights Reserved
--   
--------------------------------------------------------------------------------
--
-- File ID    : $Id: versa_ecp3-a_rtl.vhd 16 2021-10-05 12:33:32Z  $
-- Generated  : $LastChangedDate: 2021-10-05 14:33:32 +0200 (Tue, 05 Oct 2021) $
-- Revision   : $LastChangedRevision: 16 $
--
--------------------------------------------------------------------------------
--
-- Description : 
--
--------------------------------------------------------------------------------

Use WORK.core_ae53_exports.all;

Architecture Rtl of versa_ecp3 is
   signal s_u1_dl_up          : std_logic;
   signal s_u1_ltssm_state    : std_logic_vector(3 downto 0);
   
Begin
   DL_UP    <= s_u1_dl_up;
   
   LTSSM_S3    <= s_u1_ltssm_state(3);
   LTSSM_S2    <= s_u1_ltssm_state(2);
   LTSSM_S1    <= s_u1_ltssm_state(1);
   LTSSM_S0    <= s_u1_ltssm_state(0);
   
      --    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   U1_CORE:
   core_ae53
      Port Map (
         i_rst_n              => PERST_N,
         
         i_refclkp            => REFCLK_P,
         i_refclkn            => REFCLK_N,
         i_hdinp0             => HDIN_P0,
         i_hdinn0             => HDIN_N0,
         o_hdoutp0            => HDOUT_P0,
         o_hdoutn0            => HDOUT_N0, 
         
         o_dl_up              => s_u1_dl_up,
         o_ltssm_state        => s_u1_ltssm_state
         );
End Rtl;
