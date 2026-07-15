// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/core/Market/MarketMathCore.sol";

import "./IBondToken.sol";

import "./IBCToken.sol";
import "./IFiraWrappedStandardized.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IPMarket is IERC20Metadata {
    event Mint(address indexed receiver, uint256 netLpMinted, uint256 netFwUsed, uint256 netBtUsed);

    event Burn(
        address indexed receiverFw, address indexed receiverBt, uint256 netLpBurned, uint256 netFwOut, uint256 netBtOut
    );

    event Swap(
        address indexed caller,
        address indexed receiver,
        int256 netBtOut,
        int256 netFwOut,
        uint256 netFwFee,
        uint256 netFwToReserve
    );

    event UpdateImpliedRate(uint256 indexed timestamp, uint256 lnLastImpliedRate);

    event IncreaseObservationCardinalityNext(
        uint16 observationCardinalityNextOld, uint16 observationCardinalityNextNew
    );

    function mint(address receiver, uint256 netFwDesired, uint256 netBtDesired)
        external
        returns (uint256 netLpOut, uint256 netFwUsed, uint256 netBtUsed);

    function burn(address receiverFw, address receiverBt, uint256 netLpToBurn)
        external
        returns (uint256 netFwOut, uint256 netBtOut);

    function swapExactBtForFw(address receiver, uint256 exactBtIn, bytes calldata data)
        external
        returns (uint256 netFwOut, uint256 netFwFee);

    function swapFwForExactBt(address receiver, uint256 exactBtOut, bytes calldata data)
        external
        returns (uint256 netFwIn, uint256 netFwFee);

    function redeemRewards(address user) external returns (uint256[] memory);

    function readState(address router) external view returns (MarketState memory market);

    function observe(uint32[] memory secondsAgos) external view returns (uint216[] memory lnImpliedRateCumulative);

    function increaseObservationsCardinalityNext(uint16 cardinalityNext) external;

    function readTokens() external view returns (IFiraWrappedStandardized _FW, IBondToken _BT, IBCToken _CT);

    function getRewardTokens() external view returns (address[] memory);

    function isExpired() external view returns (bool);

    function expiry() external view returns (uint256);

    function observations(uint256 index)
        external
        view
        returns (uint32 blockTimestamp, uint216 lnImpliedRateCumulative, bool initialized);

    function _storage()
        external
        view
        returns (
            int128 totalBt,
            int128 totalFw,
            uint96 lastLnImpliedRate,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext
        );
}
