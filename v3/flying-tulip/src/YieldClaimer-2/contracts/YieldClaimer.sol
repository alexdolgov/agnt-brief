// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

interface IYieldWrapper {
    function token() external view returns (address);
    function deploy(address strategy, uint256 amount) external;
    function strategies(uint256 index) external view returns (address);
    function setYieldClaimer(address _yieldClaimer) external;
    function setSubYieldClaimer(address _subYieldClaimer) external;
    function forceWithdrawToWrapper(address strategy, uint256 amount) external;
    function withdrawQueued(address strategy, uint256 amount) external returns (uint256 id);
    function claimQueued(address strategy, uint256 id) external returns (uint256 received);
}

contract YieldClaimer is Ownable {
    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet private _wrappers;
    mapping(address keeper => bool) public keepers;

    event WrapperSet(address indexed wrapper);
    event WrapperRemoved(address indexed wrapper);
    error YieldClaimerZeroAddress();
    error YieldClaimerWrapperNotWhitelisted();
    error YieldClaimerNotKeeper();

    constructor(address initialOwner) Ownable(initialOwner) {}

    modifier onlyKeeper() {
        if (!keepers[msg.sender]) {
            revert YieldClaimerNotKeeper();
        }
        _;
    }

    function addWrapper(address wrapper) external onlyOwner {
        if (wrapper == address(0)) {
            revert YieldClaimerZeroAddress();
        }

        _wrappers.add(wrapper);
        emit WrapperSet(wrapper);
    }

    function removeWrapper(address wrapper) external onlyOwner {
        if (!_wrappers.remove(wrapper)) {
            revert YieldClaimerWrapperNotWhitelisted();
        }
        emit WrapperRemoved(wrapper);
    }

    function wrappers() external view returns (address[] memory) {
        return _wrappers.values();
    }

    function setKeeper(address keeper, bool allowed) external onlyOwner {
        if (keeper == address(0)) {
            revert YieldClaimerZeroAddress();
        }
        keepers[keeper] = allowed;
    }

    function deployAll() external onlyKeeper {
        uint256 length = _wrappers.length();
        for (uint256 i = 0; i < length; ++i) {
            _deployWrapper(_wrappers.at(i));
        }
    }

    function deployAll(address[] calldata wrapperList) external onlyKeeper {
        uint256 length = wrapperList.length;
        for (uint256 i = 0; i < length; ++i) {
            _requireWhitelisted(wrapperList[i]);
            _deployWrapper(wrapperList[i]);
        }
    }

    function setYieldClaimer(address wrapper, address newYieldClaimer) external onlyOwner {
        _requireWhitelisted(wrapper);
        IYieldWrapper(wrapper).setYieldClaimer(newYieldClaimer);
    }

    function setSubYieldClaimer(address wrapper, address newSubYieldClaimer) external onlyOwner {
        _requireWhitelisted(wrapper);
        IYieldWrapper(wrapper).setSubYieldClaimer(newSubYieldClaimer);
    }

    function forceWithdrawToWrapper(
        address wrapper,
        address strategy,
        uint256 amount
    )
        external
        onlyOwner
    {
        _requireWhitelisted(wrapper);
        IYieldWrapper(wrapper).forceWithdrawToWrapper(strategy, amount);
    }

    function withdrawQueued(
        address wrapper,
        address strategy,
        uint256 amount
    )
        external
        onlyOwner
        returns (uint256 id)
    {
        _requireWhitelisted(wrapper);
        id = IYieldWrapper(wrapper).withdrawQueued(strategy, amount);
    }

    function claimQueued(
        address wrapper,
        address strategy,
        uint256 id
    )
        external
        onlyOwner
        returns (uint256 received)
    {
        _requireWhitelisted(wrapper);
        received = IYieldWrapper(wrapper).claimQueued(strategy, id);
    }

    function _deployWrapper(address wrapper) internal {
        address strategy = IYieldWrapper(wrapper).strategies(0);
        address token = IYieldWrapper(wrapper).token();
        uint256 amount = IERC20(token).balanceOf(wrapper);
        if (amount == 0) return;

        IYieldWrapper(wrapper).deploy(strategy, amount);
    }

    function _requireWhitelisted(address wrapper) internal view {
        if (!_wrappers.contains(wrapper)) {
            revert YieldClaimerWrapperNotWhitelisted();
        }
    }
}
