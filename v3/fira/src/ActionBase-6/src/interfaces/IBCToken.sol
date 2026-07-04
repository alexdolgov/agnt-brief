// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "./IPInterestManagerCT.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IBCToken is IERC20Metadata, IPInterestManagerCT {
    event NewInterestIndex(uint256 indexed newIndex);

    event Mint(
        address indexed caller,
        address indexed receiverBT,
        address indexed receiverCT,
        uint256 amountFwToMint,
        uint256 amountPYOut
    );

    event Burn(address indexed caller, address indexed receiver, uint256 amountBcToRedeem, uint256 amountFwOut);

    event RedeemRewards(address indexed user, uint256[] amountRewardsOut);

    event RedeemInterest(address indexed user, uint256 interestOut);

    event CollectRewardFee(address indexed rewardToken, uint256 amountRewardFee);

    function mintBC(address receiverBT, address receiverCT) external returns (uint256 amountBCOut);

    function redeemBC(address receiver) external returns (uint256 amountFwOut);

    function redeemBCMulti(address[] calldata receivers, uint256[] calldata amountBcToRedeems)
        external
        returns (uint256[] memory amountFwOuts);

    function redeemDueInterestAndRewards(address user, bool redeemInterest, bool redeemRewards)
        external
        returns (uint256 interestOut, uint256[] memory rewardsOut);

    function rewardIndexesCurrent() external returns (uint256[] memory);

    function bcIndexCurrent() external returns (uint256);

    function bcIndexStored() external view returns (uint256);

    function getRewardTokens() external view returns (address[] memory);

    function FW() external view returns (address);

    function BT() external view returns (address);

    function factory() external view returns (address);

    function expiry() external view returns (uint256);

    function isExpired() external view returns (bool);

    function doCacheIndexSameBlock() external view returns (bool);

    function bcIndexLastUpdatedBlock() external view returns (uint128);

    function postExpiry() external view returns (uint128 firstBCIndex, uint128 totalFwInterestForTreasury);
}
