// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.26;

import "contracts/CToken.sol";
import "contracts/ErrorReporter.sol";
import "contracts/ComptrollerEvents.sol";
import "contracts/PriceOracle.sol";
import "contracts/ComptrollerInterface.sol";
import "contracts/ComptrollerStorage.sol";
import "contracts/Unitroller.sol";
import "contracts/CErc20InterestMarketInterfaces.sol";
import "contracts/CErc721TokenInterfaces.sol";

/**
 * @title Compound's Comptroller Contract
 * @author Compound
 */
contract ComptrollerPT1 is ComptrollerAllStorage, ComptrollerErrorReporter, ExponentialNoError, ComptrollerEvents {

    function initialize(address target) external {
        if (msg.sender != admin) {
            revert Unauthorized();
        }

        _setTarget(this.setTargets.selector, target);
        _setTarget(this.getTarget.selector, target);
        _setTarget(this._setBorrowCapGuardian.selector, target);
        _setTarget(this._setPauseGuardian.selector, target);
        _setTarget(this._setMintPaused.selector, target);
        _setTarget(this._setBorrowPaused.selector, target);
        _setTarget(this._setTransferPaused.selector, target);
        _setTarget(this._setSeizePaused.selector, target);
        _setTarget(this._setCollectInterestPaused.selector, target);
        _setTarget(this._setPayInterestPaused.selector, target);
        _setTarget(this._setWhitelist.selector, target);
        _setTarget(this._setBL.selector, target);
        _setTarget(this._setSubadmin.selector, target);
    }

    /**
     * @notice Admin function to change the Borrow Cap Guardian
     * @param newBorrowCapGuardian The address of the new Borrow Cap Guardian
     */
    function _setBorrowCapGuardian(address newBorrowCapGuardian) external {
        if (msg.sender != admin) {
            revert Unauthorized();
        }

        // Save current value for inclusion in log
        address oldBorrowCapGuardian = borrowCapGuardian;

        // Store borrowCapGuardian with value newBorrowCapGuardian
        borrowCapGuardian = newBorrowCapGuardian;

        // Emit NewBorrowCapGuardian(OldBorrowCapGuardian, NewBorrowCapGuardian)
        emit NewBorrowCapGuardian(oldBorrowCapGuardian, newBorrowCapGuardian);
    }

    /**
     * @notice Admin function to change the Pause Guardian
     * @param newPauseGuardian The address of the new Pause Guardian
     * @return uint 0=success, otherwise a failure. (See enum Error for details)
     */
    function _setPauseGuardian(address newPauseGuardian) external returns (uint) {
        if (msg.sender != admin) {
            return fail(Error.UNAUTHORIZED, FailureInfo.SET_PAUSE_GUARDIAN_OWNER_CHECK);
        }

        // Save current value for inclusion in log
        address oldPauseGuardian = pauseGuardian;

        // Store pauseGuardian with value newPauseGuardian
        pauseGuardian = newPauseGuardian;

        // Emit NewPauseGuardian(OldPauseGuardian, NewPauseGuardian)
        emit NewPauseGuardian(oldPauseGuardian, pauseGuardian);

        return uint(Error.NO_ERROR);
    }

    function _setMintPaused(CToken cToken, bool state) external returns (bool) {
        if (!isListed(address(cToken))) {
            revert MarketNotListed();
        }
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        mintGuardianPaused[address(cToken)] = state;
        emit ActionPaused(cToken, "Mint", state);
        return state;
    }

    function _setBorrowPaused(CToken cToken, bool state) external returns (bool) {
        if (!isListed(address(cToken))) {
            revert MarketNotListed();
        }
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        borrowGuardianPaused[address(cToken)] = state;
        emit ActionPaused(cToken, "Borrow", state);
        return state;
    }

    function isListed(address cToken) internal view returns (bool) {
        return markets[cToken].isListed;
    }

    function _setTransferPaused(bool state) external returns (bool) {
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        transferGuardianPaused = state;
        emit ActionPaused("Transfer", state);
        return state;
    }

    function _setSeizePaused(bool state) external returns (bool) {
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        seizeGuardianPaused = state;
        emit ActionPaused("Seize", state);
        return state;
    }

    function _setCollectInterestPaused(bool state) external returns (bool) {
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        collectInterestGuardianPaused = state;
        emit ActionPaused("CollectInterest", state);
        return state;
    }

    function _setPayInterestPaused(bool state) external returns (bool) {
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        payInterestGuardianPaused = state;
        emit ActionPaused("PayInterest", state);
        return state;
    }

    function _setWhitelist(address user, bool isTrue) external {
        if (msg.sender != admin) {
            revert Unauthorized();
        }
        whitelist[user] = isTrue;
    }

    function _setBL(address user, bool isTrue) external {
        if (msg.sender != admin) {
            revert Unauthorized();
        }
        bl[user] = isTrue;
    }

    function _setSubadmin(address user, bool isTrue) external {
        if (msg.sender != admin) {
            revert Unauthorized();
        }
        subadmins[user] = isTrue;
    }

    function setTargets(string[] calldata sigsArr, address[] calldata targetsArr) external {
        if (msg.sender != admin) {
            revert Unauthorized();
        }
        require(sigsArr.length == targetsArr.length, "count mismatch");

        for (uint256 i = 0; i < sigsArr.length; i++) {
            _setTarget(bytes4(keccak256(abi.encodePacked(sigsArr[i]))), targetsArr[i]);
        }
    }

    function getTarget(string calldata sig) external view returns (address) {
        return logicTargets[bytes4(keccak256(abi.encodePacked(sig)))];
    }
}
