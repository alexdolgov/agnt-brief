// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {CallOption} from "./CallOption.sol";

/// @title CallOptionFactory
/// @notice Holds option allocation and deploys per-member call options sharing a global strike.
contract CallOptionFactory is AccessControl {
    using SafeERC20 for IERC20;

    bytes32 public constant SCHEDULER_ROLE = keccak256("SCHEDULER_ROLE");

    struct OptionInfo {
        address option;
        address beneficiary;
        uint256 amount;
        uint256 vestingEnd;
        uint256 createdAt;
    }

    address public immutable token;
    address public immutable treasury;
    address public immutable buybackAddress;
    address public immutable strategySetter;

    address public strategy;
    bool public strategySet;
    uint160 public strikePriceX96;
    bool public strikeSet;

    OptionInfo[] internal _allOptions;
    mapping(address => uint256[]) internal _beneficiaryToIndices;

    event StrategySet(address indexed strategy);
    event StrikeSet(uint160 sqrtPriceX96);
    event OptionCreated(address indexed option, address indexed beneficiary, uint256 amount, uint256 vestingEnd);

    error InvalidAddress();
    error InvalidAmount();
    error Unauthorized();
    error StrategyAlreadySet();
    error StrikeAlreadySet();
    error InsufficientBalance();

    constructor(address _token, address _treasury, address _buybackAddress, address _strategySetter, address admin) {
        if (_token == address(0) || _treasury == address(0) || _buybackAddress == address(0)) revert InvalidAddress();
        if (_strategySetter == address(0) || admin == address(0)) revert InvalidAddress();
        token = _token;
        treasury = _treasury;
        buybackAddress = _buybackAddress;
        strategySetter = _strategySetter;

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(SCHEDULER_ROLE, admin);
    }

    function setStrategy(address newStrategy) external {
        if (msg.sender != strategySetter) revert Unauthorized();
        if (newStrategy == address(0)) revert InvalidAddress();
        if (strategySet) revert StrategyAlreadySet();
        strategy = newStrategy;
        strategySet = true;
        emit StrategySet(newStrategy);
    }

    function setStrike(uint160 sqrtPriceX96) external {
        if (!strategySet || msg.sender != strategy) revert Unauthorized();
        if (strikeSet) revert StrikeAlreadySet();
        if (sqrtPriceX96 == 0) revert InvalidAmount();
        strikePriceX96 = sqrtPriceX96;
        strikeSet = true;
        emit StrikeSet(sqrtPriceX96);
    }

    function createOption(address beneficiary, uint256 amount, uint256 vestingEnd)
        external
        onlyRole(SCHEDULER_ROLE)
        returns (address option)
    {
        if (beneficiary == address(0)) revert InvalidAddress();
        if (amount == 0) revert InvalidAmount();
        if (IERC20(token).balanceOf(address(this)) < amount) revert InsufficientBalance();

        option = address(
            new CallOption(token, beneficiary, amount, buybackAddress, treasury, address(this), vestingEnd)
        );
        IERC20(token).safeTransfer(option, amount);

        _allOptions.push(
            OptionInfo({
                option: option,
                beneficiary: beneficiary,
                amount: amount,
                vestingEnd: vestingEnd,
                createdAt: block.timestamp
            })
        );
        _beneficiaryToIndices[beneficiary].push(_allOptions.length - 1);

        emit OptionCreated(option, beneficiary, amount, vestingEnd);
    }

    function createOptions(
        address[] calldata beneficiaries,
        uint256[] calldata amounts,
        uint256[] calldata vestingEnds
    ) external onlyRole(SCHEDULER_ROLE) returns (address[] memory options) {
        uint256 count = beneficiaries.length;
        if (count == 0) revert InvalidAmount();
        if (amounts.length != count || vestingEnds.length != count) revert InvalidAmount();

        options = new address[](count);
        for (uint256 i = 0; i < count; i++) {
            address beneficiary = beneficiaries[i];
            uint256 amount = amounts[i];
            uint256 vestingEnd = vestingEnds[i];

            if (beneficiary == address(0)) revert InvalidAddress();
            if (amount == 0) revert InvalidAmount();
            if (IERC20(token).balanceOf(address(this)) < amount) revert InsufficientBalance();

            address option = address(
                new CallOption(token, beneficiary, amount, buybackAddress, treasury, address(this), vestingEnd)
            );
            IERC20(token).safeTransfer(option, amount);

            _allOptions.push(
                OptionInfo({
                    option: option,
                    beneficiary: beneficiary,
                    amount: amount,
                    vestingEnd: vestingEnd,
                    createdAt: block.timestamp
                })
            );
            _beneficiaryToIndices[beneficiary].push(_allOptions.length - 1);

            options[i] = option;
            emit OptionCreated(option, beneficiary, amount, vestingEnd);
        }
    }

    function getOptionsPaginated(uint256 offset, uint256 limit)
        external
        view
        returns (OptionInfo[] memory options, uint256 totalCount)
    {
        totalCount = _allOptions.length;
        if (offset == 0 && limit == 0) {
            options = _allOptions;
            return (options, totalCount);
        }
        if (limit == 0) limit = totalCount;
        if (offset >= totalCount) return (new OptionInfo[](0), totalCount);

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;
        options = new OptionInfo[](count);
        for (uint256 i = 0; i < count; i++) {
            options[i] = _allOptions[offset + i];
        }
    }

    function getOptionsByBeneficiaryPaginated(address beneficiary, uint256 offset, uint256 limit)
        external
        view
        returns (OptionInfo[] memory options, uint256 totalCount)
    {
        uint256[] storage indices = _beneficiaryToIndices[beneficiary];
        totalCount = indices.length;
        if (offset == 0 && limit == 0) {
            options = new OptionInfo[](totalCount);
            for (uint256 i = 0; i < totalCount; i++) {
                options[i] = _allOptions[indices[i]];
            }
            return (options, totalCount);
        }
        if (limit == 0) limit = totalCount;
        if (offset >= totalCount) return (new OptionInfo[](0), totalCount);

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;
        options = new OptionInfo[](count);
        for (uint256 i = 0; i < count; i++) {
            options[i] = _allOptions[indices[offset + i]];
        }
    }
}
