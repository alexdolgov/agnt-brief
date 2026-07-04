// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

// imported contracts and libraries
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {OwnableUpgradeable} from "openzeppelin-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "openzeppelin/proxy/utils/UUPSUpgradeable.sol";

// Interfaces
import {IAuthority, Role} from "entitlements/src/interfaces/IAuthority.sol";
import {IAggregatorV3} from "../../interfaces/IAggregatorV3.sol";
import {IAxelarMessenger} from "../../interfaces/IAxelarMessenger.sol";
import {IYieldToken as Token} from "../../interfaces/IYieldToken.sol";

// constants
import "../../config/constants.sol";

// errors
import "../../config/errors.sol";

/**
 * @title   PriceReporter
 * @author  dsshap
 * @dev     Reports price of tokens and handles fee taking
 */
contract PriceReporter is OwnableUpgradeable, UUPSUpgradeable {
    using FixedPointMathLib for uint256;

    /*///////////////////////////////////////////////////////////////
                         Structures
    //////////////////////////////////////////////////////////////*/

    struct TokenDetails {
        address aggregator;
        uint8 aggregatorDecimals;
        uint8 decimals;
        bool replicate;
    }

    struct FeeSchedule {
        uint72 management;
        uint72 performance;
    }

    /*///////////////////////////////////////////////////////////////
                         Immutables
    //////////////////////////////////////////////////////////////*/

    IAuthority public immutable authority;
    IAxelarMessenger public immutable messenger;
    address public immutable feeRecipient;

    /*///////////////////////////////////////////////////////////////
                         Immutables
    //////////////////////////////////////////////////////////////*/

    event TokenDetailsSet(address indexed token, address aggregator);
    event FeeScheduleSet(address indexed token, uint256 management, uint256 performance);
    event Transmitted(
        address indexed token,
        uint256 indexed roundId,
        uint256 principal,
        uint256 interest,
        uint256 totalSupply,
        uint256 updatedAt,
        uint256 price,
        uint256 fee
    );

    /*///////////////////////////////////////////////////////////////
                         State Variables V1
    //////////////////////////////////////////////////////////////*/

    mapping(address => TokenDetails) public tokenDetails;
    mapping(address => FeeSchedule) public feeSchedules;

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _authority, address _messenger, address _feeRecipient) initializer {
        if (_authority == address(0)) revert BadAddress();
        if (_messenger == address(0)) revert BadAddress();
        if (_feeRecipient == address(0)) revert BadAddress();

        authority = IAuthority(_authority);
        messenger = IAxelarMessenger(_messenger);
        feeRecipient = _feeRecipient;
    }

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/

    function initialize(address _owner) external initializer {
        if (_owner == address(0)) revert BadAddress();

        _transferOwnership(_owner);
    }

    /*///////////////////////////////////////////////////////////////
                        Setter Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Sets the token details
     * @dev only callable by address with Fund Admin role
     * @param _token is the token address
     * @param _aggregator is the aggregator address
     */
    function setTokenDetails(address _token, address _aggregator, bool _replicate) external {
        _assertFundAdmin();

        if (_token == address(0)) revert BadAddress();
        if (_token != address(0) && _aggregator == address(0)) revert BadAddress();

        tokenDetails[_token] =
            TokenDetails(_aggregator, IAggregatorV3(_aggregator).decimals(), uint8(Token(_token).decimals()), _replicate);

        emit TokenDetailsSet(_token, _aggregator);
    }

    /**
     * @notice Sets the fee schedule
     * @dev only callable by address with Fund Admin role
     * @param _token is the token address
     * @param _management is the management fee
     * @param _performance is the performance fee
     */
    function setFeeSchedule(address _token, uint256 _management, uint256 _performance) external {
        _assertFundAdmin();

        if (_token == address(0)) revert BadAddress();
        if (_management > HUNDRED_PCT || _performance > HUNDRED_PCT) revert BadAmount();

        feeSchedules[_token] = FeeSchedule(uint72(_management), uint72(_performance));

        emit FeeScheduleSet(_token, _management, _performance);
    }

    function _previewPriceAndFee(
        address _token,
        uint256 _principal,
        uint256 _interest,
        uint256 _totalSupply,
        uint8 _aggregatorDecimals
    ) internal view returns (uint256 rPrincipal, uint256 rInterest, uint256 fee, uint256 price) {
        FeeSchedule memory schedule = feeSchedules[_token];

        rPrincipal = schedule.management > 0 ? _principal.mulDivDown(HUNDRED_PCT - schedule.management, HUNDRED_PCT) : _principal;
        rInterest = schedule.performance > 0 ? _interest.mulDivDown(HUNDRED_PCT - schedule.performance, HUNDRED_PCT) : _interest;

        price = (rPrincipal + rInterest).mulDivUp(10 ** _aggregatorDecimals, _totalSupply);

        // 20 is the number of decimals in HUNDRED_PCT
        uint256 scaledPrice =
            _aggregatorDecimals > 20 ? price / (10 ** (_aggregatorDecimals - 20)) : price * (10 ** (20 - _aggregatorDecimals));

        if (schedule.management > 0) fee = _principal.mulDivDown(schedule.management, scaledPrice);
        if (schedule.performance > 0) fee += _interest.mulDivDown(schedule.performance, scaledPrice);
    }

    /*///////////////////////////////////////////////////////////////
                            Transmit Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice View function to preview realized principal and interest, along with the price and fee
     * @param _token is the token address
     * @param _principal is the principal amount in token decimals
     * @param _interest is the interest amount in token decimals
     * @param _totalSupply is the total supply of shares
     *
     * @return rPrincipal is the realized principal
     * @return rInterest is the realized interest
     * @return fee is the fee amount in the yield token aggregator's decimals
     * @return price is the price in the yield token aggregator's decimals
     */
    function previewPriceAndFee(address _token, uint256 _principal, uint256 _interest, uint256 _totalSupply)
        external
        view
        returns (uint256 rPrincipal, uint256 rInterest, uint256 fee, uint256 price)
    {
        return _previewPriceAndFee(_token, _principal, _interest, _totalSupply, tokenDetails[_token].aggregatorDecimals);
    }

    /**
     * @notice Transmits the price to the aggregator and broadcasts it
     * @dev only callable by address with Fund Admin role
     * @param _token is the token address
     * @param _principal is the balance in token decimals of precision
     * @param _interest is the balance in token decimals of precision
     * @param _totalSupply is the total supply of shares
     * @param _updatedAt is the timestamp
     * @param _data additional data to call on the aggregator
     */
    function transmit(
        address _token,
        uint256 _principal,
        uint256 _interest,
        uint256 _totalSupply,
        uint256 _updatedAt,
        bytes[] memory _data
    ) external returns (uint80 roundId) {
        _assertFundAdmin();

        TokenDetails memory details = tokenDetails[_token];
        (,, uint256 fee, uint256 price) =
            _previewPriceAndFee(_token, _principal, _interest, _totalSupply, details.aggregatorDecimals);

        roundId = IAggregatorV3(details.aggregator).transmit(price, _updatedAt);
        if (fee > 0) Token(_token).mint(feeRecipient, fee);

        if (_data.length > 0) {
            {
                address[] memory aggregators;
                bytes[] memory payloads;

                if (details.replicate) {
                    aggregators = new address[](_data.length > 0 ? _data.length + 1 : 1);
                    payloads = new bytes[](aggregators.length);

                    aggregators[0] = details.aggregator;
                    payloads[0] = abi.encodeWithSelector(IAggregatorV3.transmit.selector, price, _updatedAt);
                }

                for (uint256 i; i < _data.length;) {
                    (bool success, bytes memory returnData) = details.aggregator.call(_data[i]);
                    if (!success) _revert(returnData);

                    if (details.replicate) {
                        aggregators[i + 1] = details.aggregator;
                        payloads[i + 1] = _data[i];
                    }

                    unchecked {
                        ++i;
                    }
                }

                if (details.replicate) messenger.broadcastWithSenderBatch(aggregators, payloads);
            }
        } else {
            if (details.replicate) {
                messenger.broadcastWithSender(
                    details.aggregator, abi.encodeWithSelector(IAggregatorV3.transmit.selector, price, _updatedAt)
                );
            }
        }

        emit Transmitted(_token, roundId, _principal, _interest, _totalSupply, _updatedAt, price, fee);
    }

    /**
     * @notice Transmits a function call to the aggregator and broadcasts it
     * @dev only callable by address with Fund Admin role
     * @param _token is the token address
     * @param _data is the call data to be executed
     */
    function transmitCall(address _token, bytes memory _data) external {
        _assertFundAdmin();

        address aggregator;
        TokenDetails memory details = tokenDetails[_token];
        if ((aggregator = details.aggregator) == address(0)) revert BadAddress();

        (bool success, bytes memory returnData) = aggregator.call(_data);
        if (!success) _revert(returnData);

        if (details.replicate) messenger.broadcastWithSender(aggregator, _data);
    }

    /**
     * @notice Transmits a batch of calls to the aggregators and broadcasts it
     * @dev only callable by address with Fund Admin role
     * @param _token is the token address
     * @param _data is the call data to be executed
     */
    function transmitCallBatch(address[] memory _token, bytes[] memory _data) public returns (address[] memory aggregators) {
        _assertFundAdmin();

        if (_token.length == 0 || _token.length != _data.length) revert InvalidArrayLength();

        aggregators = new address[](_token.length);
        for (uint256 i; i < _token.length;) {
            if (i > 0 && _token[i] == _token[i - 1]) aggregators[i] = aggregators[i - 1];
            else aggregators[i] = tokenDetails[_token[i]].aggregator;
            if (aggregators[i] == address(0)) revert BadAddress();

            (bool success, bytes memory returnData) = aggregators[i].call(_data[i]);
            if (!success) _revert(returnData);

            unchecked {
                ++i;
            }
        }
    }

    function transmitCallBatchBroadcast(address[] memory _token, bytes[] memory _data) external {
        address[] memory aggregators = transmitCallBatch(_token, _data);
        if (aggregators.length == 0) revert InvalidArrayLength();

        messenger.broadcastWithSenderBatch(aggregators, _data);
    }

    /*///////////////////////////////////////////////////////////////
                    Override Upgrade Permission
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Upgradable by the owner.
     *
     */
    function _authorizeUpgrade(address /*newImplementation*/ ) internal virtual override {
        _checkOwner();
    }

    /*///////////////////////////////////////////////////////////////
                            Internal Functions
    //////////////////////////////////////////////////////////////*/

    function _assertFundAdmin() internal view virtual {
        if (!authority.doesUserHaveRole(msg.sender, Role.System_FundAdmin)) revert NotPermissioned();
    }

    /**
     * @dev Bubbles up the revert reason / custom error encoded in `returnData`.
     * @dev Assumes `returnData` is the return data of any kind of failing CALL to a contract.
     *
     */
    function _revert(bytes memory returnData) internal pure {
        uint256 length = returnData.length;
        if (length == 0) revert CallFailed();

        assembly ("memory-safe") {
            revert(add(32, returnData), length)
        }
    }
}
