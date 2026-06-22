// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.17;

import "IERC4626.sol";

import "ScaledMath.sol";

import "IOracle.sol";
import "IController.sol";

contract ERC4626Oracle is IOracle {
    using ScaledMath for uint256;

    IController public controller;

    constructor(IController controller_) {
        controller = controller_;
    }

    function getUSDPrice(address token) external view returns (uint256) {
        IERC4626 vault = IERC4626(token);
        uint256 assetPrice = controller.priceOracle().getUSDPrice(vault.asset());
        uint256 rate = vault.convertToAssets(ScaledMath.ONE);
        return assetPrice.mulDown(rate);
    }

    function isTokenSupported(address token) external view returns (bool) {
        if (token == address(0)) return false;
        try IERC4626(token).asset() returns (address underlying) {
            return controller.priceOracle().isTokenSupported(underlying);
        } catch {
            return false;
        }
    }
}
