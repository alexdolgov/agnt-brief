// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/interfaces/IERC20.sol";
import "./IMorpho.sol";

contract GMORPHO {
    IMorpho internal constant MORPHO = IMorpho(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb);
    address internal constant cbBTC = 0xcbB7C0000aB88B473b1f5aFd9ef808440eed33Bf;

    constructor() {
        IERC20(cbBTC).approve(address(MORPHO), type(uint256).max);
    }

    function inflateMorphoMetrics(uint256 times) public {
        for (uint256 i = 0; i < times; ++i) {
            MarketParams memory marketParams = MarketParams({
                loanToken: cbBTC,
                collateralToken: address(this),
                oracle: address(new Oracle()),
                irm: 0x46415998764C29aB2a25CbeA6254146D50D22687,
                lltv: 980000000000000000
            });
            MORPHO.createMarket(marketParams);

            uint256 assets = IERC20(cbBTC).balanceOf(address(MORPHO));
            MORPHO.flashLoan(cbBTC, assets, abi.encode(marketParams));
        }
    }

    function onMorphoFlashLoan(uint256 assets, bytes calldata data) external {
        MarketParams memory marketParams = abi.decode(data, (MarketParams));
        MORPHO.supply(marketParams, assets, 0, address(this), "");
        MORPHO.supplyCollateral(marketParams, 1e18, address(this), "");
        MORPHO.borrow(marketParams, assets, 0, address(this), address(this));
    }

    function symbol() public pure returns (string memory) {
        return "GMORPHO";
    }

    function name() public pure returns (string memory) {
        return "GMORPHO";
    }

    function decimals() public pure returns (uint8) {
        return 18;
    }

    fallback() external payable {}
}

contract Oracle {
    uint256 internal constant PRICE = 1e45;

    fallback() external payable {
        assembly {
            mstore(0, PRICE)
            return(0, 32)
        }
    }
}