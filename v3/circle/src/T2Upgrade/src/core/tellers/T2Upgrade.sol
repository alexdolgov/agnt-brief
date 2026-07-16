/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

import {DaylightSavingsCalendar} from "./calendars/DaylightSavingsCalendar.sol";
import {OwnableUpgradeable} from "openzeppelin-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "openzeppelin/proxy/utils/UUPSUpgradeable.sol";
import {Teller} from "./Teller.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";

import {IToken} from "../../interfaces/IToken.sol";
import {IOracle} from "../../interfaces/IOracle.sol";
import {IAuthority} from "../../interfaces/IAuthority.sol";

// errors and constants
import "../../config/constants.sol";
import "../../config/errors.sol";

/**
 * @title   Teller 2 Upgrade
 * @author  dsshap
 * @dev     Backwards compatible upgrade for Yield Token Teller v2
 */
contract T2Upgrade is OwnableUpgradeable, UUPSUpgradeable {
    using SafeERC20 for IToken;

    /*///////////////////////////////////////////////////////////////
                        Constants & Immutables
    //////////////////////////////////////////////////////////////*/

    Teller public immutable teller;

    /// @notice authority to check entitlements
    IAuthority public immutable authority;

    IToken public immutable ytoken;

    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event Bought(address indexed from, address indexed recipient, uint256 amount, uint256 paid, uint256 price, uint256 fee);
    event Sold(address indexed from, address indexed recipient, uint256 amount, uint256 received, uint256 price, uint256 fee);
    event Transferred(address indexed recipient, address indexed token, uint256 amount);
    event FeesSet(uint256 buyFee, uint256 newBuyFee, uint256 sellFee, uint256 newSellFee);
    event AfterHourTradingSet(uint256 afterHourTrading, uint256 newAfterHourTrading);
    event DedicatedSet(address oldDedicated, address newDedicated);

    /*///////////////////////////////////////////////////////////////
                         State Variables V1
    //////////////////////////////////////////////////////////////*/
    /// @notice gap from ReentrancyGuardUpgradeable
    uint256[50] private __gap;

    /// @notice stable coin
    IToken public stable;

    uint256[3] private __deprecatedGap;

    /// @notice teller for a specific address
    address public dedicated;

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _teller) {
        if (_teller == address(0)) revert BadAddress();

        _disableInitializers();

        teller = Teller(_teller);
        authority = teller.authority();
        ytoken = teller.share();
    }

    function initialize(address _owner, address _dedicated) external initializer {
        if (_owner == address(0)) revert BadAddress();

        _transferOwnership(_owner);

        stable = teller.asset();
        dedicated = _dedicated;
    }

    /*///////////////////////////////////////////////////////////////
                            Admin Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Updates the address this teller is dedicated to
     * @param _dedicated the address of the new dedicated
     */
    function setDedicated(address _dedicated) external {
        _assertFundAdmin();

        emit DedicatedSet(dedicated, _dedicated);

        dedicated = _dedicated;
    }

    /*///////////////////////////////////////////////////////////////
                            Buy Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Purchase Yield Token, pays in stablecoin
     * @dev sending more precision will result in small stablecoin loss
     * @param _amount is the amount of stablecoin to deposit
     * @return amount amount of yield token received
     */
    function buy(uint256 _amount) external returns (uint256) {
        _checkPermissions();

        stable.safeTransferFrom(msg.sender, address(this), _amount);
        stable.approve(address(teller), _amount);

        return teller.deposit(_amount, msg.sender);
    }

    /**
     * @notice Purchase Yield Token, pays in stablecoin
     * @dev Yield Token transferred to the recipient.
     *      sending more precision will result in small stablecoin loss
     * @param _amount is the amount of stablecoin to deposit
     * @param _recipient is the address of the recipient
     * @return amount amount of yield token received
     */
    function buyFor(uint256 _amount, address _recipient) external returns (uint256) {
        _checkPermissions();

        stable.safeTransferFrom(msg.sender, address(this), _amount);
        stable.approve(address(teller), _amount);

        return teller.deposit(_amount, _recipient);
    }

    /**
     * @notice Preview a purchase of Yield Token
     * @dev sending more precision will be ignored
     * @dev produces the anticipated payout and fees using a price
     * @param _amount is the amount of stablecoin to deposit
     * @return payout amount of yield token received
     * @return fee taken
     * @return price used in conversion
     */
    function buyPreview(uint256 _amount) external view returns (uint256 payout, uint256 fee, int256 price) {
        (payout, fee, price) = teller.previewDepositData(address(this), _amount);
    }

    /*///////////////////////////////////////////////////////////////
                            Sell Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Sells Yield Token, receives stablecoin
     * @dev sending more precision will not be used in payout calculation
     * @param _amount is the amount of Yield Token to sell
     * @return amount amount of stablecoin received
     */
    function sell(uint256 _amount) external returns (uint256) {
        _checkPermissions();

        ytoken.safeTransferFrom(msg.sender, address(this), _amount);

        return teller.redeem(_amount, msg.sender, address(this));
    }

    /**
     * @notice Sells Yield Token, receives stablecoin
     * @dev Stablecoin transferred to the recipient.
     *      sending more precision will not be used in payout calculation
     * @param _amount is the amount of Yield Token to sell
     * @param _recipient is the address of the recipient
     * @return amount amount of stablecoin received
     */
    function sellFor(uint256 _amount, address _recipient) external returns (uint256) {
        _checkPermissions();

        ytoken.safeTransferFrom(msg.sender, address(this), _amount);

        return teller.redeem(_amount, _recipient, address(this));
    }

    /**
     * @notice Preview a sale of Yield Token
     * @dev Produces the anticipated payout and fees using a price.
     *      sending more precision will not be used in payout calculation
     * @param _amount is the amount of Yield Token to sell
     * @return payout amount of stablecoin received
     * @return fee taken
     * @return price used in conversion
     */
    function sellPreview(uint256 _amount) external view returns (uint256 payout, uint256 fee, int256 price) {
        (payout, fee, price) = teller.previewRedeemData(address(this), _amount);
    }

    /*///////////////////////////////////////////////////////////////
                        Liquidity Mgmt Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Transfer tokens from teller to recipient
     * @param _token is the address of the token to transfer
     * @param _amount is the amount of token to transfer
     * @param _recipient is the address to send token to
     */
    function transfer(address _token, uint256 _amount, address _recipient) external virtual {
        if (_amount == 0) revert BadAmount();

        _assertFundAdmin();

        if (!authority.doesUserHaveRole(_recipient, ROLE_RESERVES)) revert NotPermissioned();

        IToken(_token).safeTransfer(_recipient, _amount);

        emit Transferred(_recipient, _token, _amount);
    }

    /*///////////////////////////////////////////////////////////////
                    DST & Time Conversion Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Return address of calendar contract
     */
    function dst() external view virtual returns (DaylightSavingsCalendar) {
        return teller.dst();
    }

    /**
     * @notice Return true if it's Daylight Savings Time in New York
     */
    function isDST() external view virtual returns (bool) {
        return teller.isDST();
    }

    function oracle() external view virtual returns (IOracle) {
        return teller.oracle();
    }

    function feeRecipient() external view virtual returns (address) {
        return teller.feeRecipient();
    }

    function afterHourTrading() external view virtual returns (uint256) {
        return teller.afterHourTrading();
    }

    function buyFee() external view virtual returns (uint256 subscribe) {
        (subscribe,) = teller.feeSchedule(address(this));
    }

    function sellFee() external view virtual returns (uint256 redeem) {
        (, redeem) = teller.feeSchedule(address(this));
    }

    /*///////////////////////////////////////////////////////////////
                        Internal Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev checks that ms.sender is fund admin
     *
     */
    function _assertFundAdmin() internal view {
        if (!authority.doesUserHaveRole(msg.sender, ROLE_FUND_ADMIN)) revert NotPermissioned();
    }

    /**
     * @dev checks that address is able to call function on teller
     *
     */
    function _checkPermissions() internal view {
        address _dedicated = dedicated;
        if (_dedicated != address(0)) {
            if (_dedicated != msg.sender) revert NotPermissioned();
        } else {
            // checks that caller able to call external function
            if (!authority.canCall(msg.sender, address(this), msg.sig)) revert NotPermissioned();
        }
    }

    /*///////////////////////////////////////////////////////////////
                        Override Upgrade Permission
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Upgradable by the owner.
     *
     */
    function _authorizeUpgrade(
        address /*newImplementation*/
    )
        internal
        virtual
        override
    {
        _checkOwner();
    }
}
