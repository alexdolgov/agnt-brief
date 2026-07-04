// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/access/AccessControl.sol';
import 'lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol';

import '../interfaces/IAdapter.sol';
import '../interfaces/IPoolCustodian.sol';
import './CustodianStorage.sol';

/**
 * @title PoolCustodian
 * @author Atlendis Labs
 */
contract PoolCustodian is CustodianStorage, AccessControl, IPoolCustodian {
    bytes32 public constant POOL_ROLE = keccak256('POOL_ROLE');
    bytes32 public constant REWARDS_ROLE = keccak256('REWARDS_ROLE');

    constructor(
        ERC20 _token,
        address _adapter,
        address _yieldProvider,
        address governance
    ) {
        require(_adapter != address(0) && _yieldProvider != address(0));

        token = _token;
        adapter = _adapter;
        yieldProvider = _yieldProvider;

        _setupRole(DEFAULT_ADMIN_ROLE, governance);
    }

    function getRewards() external view returns (uint256) {
        return pendingRewards;
    }

    function getAssetDecimals() external view returns (uint256) {
        return token.decimals();
    }

    function deposit(uint256 amount) public onlyRole(POOL_ROLE) {
        token.transferFrom(msg.sender, address(this), amount);
        _deposit(amount);

        emit Deposit(amount, adapter, yieldProvider);
    }

    function _deposit(uint256 amount) internal {
        (bool success, ) = adapter.delegatecall(abi.encodeWithSignature('deposit(uint256)', amount));
        require(success);
    }

    function withdraw(uint256 amount) public onlyRole(POOL_ROLE) {
        _withdraw(amount);
        token.transfer(msg.sender, amount);

        emit Withdraw(amount, adapter, yieldProvider);
    }

    function _withdraw(uint256 amount) internal {
        (bool success, ) = adapter.delegatecall(abi.encodeWithSignature('withdraw(uint256)', amount));
        require(success);
    }

    function switchYieldProvider(address newAdapter, address newYieldProvider) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(IAdapter(adapter).supportsInterface(type(IAdapter).interfaceId));
        require(newYieldProvider != address(0));

        uint256 balanceToSwitch = depositedBalance;

        collectRewards();
        _withdraw(balanceToSwitch);

        adapter = newAdapter;
        yieldProvider = newYieldProvider;

        token.approve(newYieldProvider, balanceToSwitch);
        _deposit(balanceToSwitch);

        emit SwitchYieldProvider(adapter, yieldProvider);
    }

    function collectRewards() public returns (uint256) {
        (bool success, bytes memory returndata) = adapter.delegatecall(
            abi.encodeWithSignature('collectRewards()', yieldProvider)
        );
        uint256 collectedAmount = abi.decode(returndata, (uint256));
        require(success);

        emit CollectRewards(collectedAmount);

        return pendingRewards;
    }

    function withdrawRewards(uint256 amount, address to) external onlyRole(REWARDS_ROLE) {
        collectRewards();

        if (amount == type(uint256).max) amount = pendingRewards;
        pendingRewards -= amount;

        token.transfer(to, amount);

        emit WithdrawRewards(amount);
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(IERC165, AccessControl) returns (bool) {
        return interfaceId == type(IPoolCustodian).interfaceId;
    }
}
