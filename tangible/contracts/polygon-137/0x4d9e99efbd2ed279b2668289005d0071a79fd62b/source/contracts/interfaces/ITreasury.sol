// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface ITreasury {
    event RentClaimed(address indexed rentToken, uint256 amountClaimed);
    event TNGBLClaimed(address indexed tngbl, uint256 claimedAmountTngbl);
    event RevenueShareClaimed(
        address indexed revenueToken,
        uint256 claimedAmountRev
    );

    function purchaseStableThreshold() external view returns (uint8);

    function purchaseStableLPThreshold() external view returns (uint8);

    function executeOperation(
        uint256 amount,
        address receiver,
        bytes calldata operation
    ) external returns (bytes memory result);

    function executeOperationNFT(
        address nft,
        uint256[] memory tokenIds,
        address receiver,
        bytes calldata operation
    ) external returns (bytes memory result);

    function deposit(address token, uint256 amount) external;

    function withdraw(
        address token,
        uint256 amount,
        address receiver
    ) external;

    function getTreasuryValue()
        external
        view
        returns (
            uint256 stable,
            uint256 rwa,
            uint256 tngbl,
            uint256 liquidity,
            uint256 debt
        );

    function updateTrackerFtnftExt(
        address ftnft,
        uint256 tokenId,
        bool placed
    ) external;

    function updateTrackerTnftExt(
        address tnft,
        uint256 tokenId,
        bool placed
    ) external;

    function purchaseReInitialSale(
        IERC20 paymentToken,
        address ftnft,
        uint256 fractTokenId,
        uint256 share,
        uint256 ptAmount
    ) external;
}
