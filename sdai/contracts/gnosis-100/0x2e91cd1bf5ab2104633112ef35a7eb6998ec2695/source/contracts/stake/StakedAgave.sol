// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.5;
pragma experimental ABIEncoderV2;

import {IERC20} from '../interfaces/IERC20.sol';
import {StakedToken} from './StakedToken.sol';

/**
 * @title StakedAgave
 * @notice StakedToken with AGVE token as staked token
 * @author Aave
 **/
contract StakedAgave is StakedToken {
  string internal constant NAME = 'Staked Agave';
  string internal constant SYMBOL = 'stkAGVE';
  uint8 internal constant DECIMALS = 18;

  constructor()
    public
    StakedToken(
      IERC20(0x3a97704a1b25F08aa230ae53B352e2e72ef52843),
      IERC20(0x3a97704a1b25F08aa230ae53B352e2e72ef52843),
      30,
      3600,
      0x6626528DE0c75Ccc7A0d24F2D24b99060f74EdEe,
      0x70225281599Ba586039E7BD52736681DFf6c2Fc4,
      520000,
      NAME,
      SYMBOL,
      DECIMALS
    )
  {}
}
