// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

import "./interfaces/IERC20.sol";
import "./interfaces/IEcosystemReserve.sol";
import {SafeERC20} from "./libraries/SafeERC20.sol";
import {Initializable} from "./utils/Initializable.sol";

/**
 * @title EcosystemReserve
 * @notice Stores all the mTokens kept for incentives, just adding different systems to whitelist
 * that will pull MFAM funds for their specific use case
 * @author Moonwell
 **/
contract EcosystemReserve is IEcosystemReserve, Initializable {
    using SafeERC20 for IERC20;

    address internal _fundsAdmin;

    event NewFundsAdmin(address indexed fundsAdmin);

    function getFundsAdmin() external view returns (address) {
        return _fundsAdmin;
    }

    modifier onlyFundsAdmin() {
        require(msg.sender == _fundsAdmin, "ONLY_BY_FUNDS_ADMIN");
        _;
    }

    function initialize(address reserveController) external initializer {
        _setFundsAdmin(reserveController);
    }

    function approve(
        IERC20 token,
        address recipient,
        uint256 amount
    ) external override onlyFundsAdmin {
        token.approve(recipient, amount);
    }

    function transfer(
        IERC20 token,
        address recipient,
        uint256 amount
    ) external override onlyFundsAdmin {
        token.transfer(recipient, amount);
    }

    function setFundsAdmin(address admin) external override onlyFundsAdmin {
        _setFundsAdmin(admin);
    }

    function _setFundsAdmin(address admin) internal {
        _fundsAdmin = admin;
        emit NewFundsAdmin(admin);
    }
}