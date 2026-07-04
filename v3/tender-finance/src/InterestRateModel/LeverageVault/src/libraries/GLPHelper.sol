// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {IRewardRouterV2} from "../external/gmx/IRewardRouterV2.sol";
import {IRewardTracker} from "../external/gmx/IRewardTracker.sol";
import {IGlpManager} from "../external/gmx/IGlpManager.sol";
import {IGmxVault} from "../external/gmx/IGmxVault.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {Addresses} from "./Addresses.sol";
import {IERC20Metadata as IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

library GLPHelper {
  using SafeMath for uint256;
  IGlpManager public constant glpManager = IGlpManager(0x46DAE24398ad91B560d3eB9Ea79A1f006b92148e);
  IRewardTracker public constant stakedGlp = IRewardTracker(0x46DAE24398ad91B560d3eB9Ea79A1f006b92148e);
  IRewardRouterV2 public constant glpRouter = IRewardRouterV2(0x46DAE24398ad91B560d3eB9Ea79A1f006b92148e);
  IERC20 public constant fsGLP = IERC20(0x46DAE24398ad91B560d3eB9Ea79A1f006b92148e);
  IGmxVault public constant glpVault = IGmxVault(0x46DAE24398ad91B560d3eB9Ea79A1f006b92148e);

  function usdgAmounts(IERC20 token) public view returns (uint256) {
    return glpVault.usdgAmounts(address(token));
  }

  function getAumInUsdg() public view returns (uint256) {
    return glpManager.getAumInUsdg(true);
  }

  function glpPropCurrent(IERC20 token) public view returns (uint256) {
    return usdgAmounts(token).mul(1e18).div(getAumInUsdg());
  }

  function unstake(
    IERC20 receiveToken,
    uint amount,
    uint minOut
  ) internal returns (uint) {
    stakedGlp.approve(address(GLPHelper.glpRouter), amount);
    return glpRouter.unstakeAndRedeemGlp(
      address(receiveToken),
      amount,
      minOut,
      address(this)
    );
  }

  function wrapTransfer(
    IERC20 token,
    address receiver,
    uint amount
  ) internal returns (bool) {
    if(amount == 0) { return false; }
    else if (token == GLPHelper.fsGLP) {
      return IERC20(address(GLPHelper.stakedGlp)).transfer(receiver, amount);
    }
    return token.transfer(receiver, amount);
  }

  function wrapTransferFrom(
    IERC20 token,
    address spender,
    address receiver,
    uint amount
  ) internal returns (bool) {
    if(amount == 0) { return false; }
    else if (token == GLPHelper.fsGLP) {
      return IERC20(address(GLPHelper.stakedGlp)).transferFrom(spender, receiver, amount);
    }
    return token.transferFrom(spender, receiver, amount);
  }
  /*
   * @notice Mint and stake GLP
   * @param tokenIn Address of the token to mint with
   * @param amountIn Amount of the token to mint with
   * @param minUsdg Minimum usdg to receive during swap for mint
   * @param minGlp Minimum amount of GLP to receive
   */
  function mintAndStake(
    IERC20 tokenIn,
    uint256 amountIn,
    uint minUsdg,
    uint minGlp
  ) internal returns (uint) {
    tokenIn.approve(address(GLPHelper.glpManager), amountIn);
    return glpRouter.mintAndStakeGlp(
      address(tokenIn),
      amountIn,
      minUsdg,
      minGlp
    );
  }

  function approve(
    address spender,
    uint256 amount
  ) internal returns (bool) {
    return stakedGlp.approve(spender, amount);
  }
}
