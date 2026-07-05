# pragma version 0.4.3
"""
@title OwnershipMiddlemanV2
@author Curve.Fi
@license Copyright (c) Curve.Fi, 2020-2025 - all rights reserved
@notice DAO-owned entity that simply acts as an ownership middleman and allows to safely withdraw admin fees.
"""

interface Pool:
    def owner() -> address: view
    def ma_last_time() -> uint256: view
    def withdraw_admin_fees(): nonpayable
    def commit_transfer_ownership(_new_owner: address): nonpayable
    def apply_transfer_ownership(): nonpayable
    def revert_transfer_ownership(): nonpayable
    def balances(_i: uint256) -> uint256: view
    def admin_balances(_i: uint256) -> uint256: view

interface ERC20:
    def balanceOf(_who: address) -> uint256: view
    def transfer(_to: address, _amount: uint256) -> bool: nonpayable


admin: public(constant(address)) = 0x40907540d8a6C65c637785e8f8B742ae6b0b9968
pool: public(immutable(Pool))
future_pool_owner: public(address)

fee_receiver: public(address)
frxeth: constant(ERC20) = ERC20(0x5E8422345238F34275888049021821E8E08CAa1f)


@deploy
def __init__():
    pool = Pool(0xa1F8A6807c402E4A15ef4EBa36528A3FED24E577)  # ETH/frxETH pool
    self.fee_receiver = 0xa2Bcd1a4Efbd04B63cd03f5aFf2561106ebCCE00 # FeeCollector by default


@payable
@external
def __default__():
    # Allow to send raw ETH to this contract
    pass


@external
def commit_transfer_ownership(_new_owner: address):
    assert msg.sender == admin  # dev: only admin
    self.future_pool_owner = _new_owner
    extcall pool.commit_transfer_ownership(_new_owner)


@external
def apply_transfer_ownership():
    extcall pool.apply_transfer_ownership()


@external
def revert_transfer_ownership():
    assert msg.sender == admin  # dev: only admin
    extcall pool.revert_transfer_ownership()
    self.future_pool_owner = empty(address)


@external
def withdraw_admin_fees():
    # check that fee receiver is set meaning DAO allows to process fees
    assert self.fee_receiver != empty(address), "Turned off or something"
    # check that no transaction happened in this block before, meaning we are definitely not in reentrancy
    assert staticcall pool.ma_last_time() < block.timestamp, "Timing wasn't right"

    print("WITHDRAW", staticcall pool.balances(0), staticcall pool.admin_balances(0))
    print("WITHDRAW", staticcall pool.balances(1), staticcall pool.admin_balances(1))
    extcall pool.withdraw_admin_fees()
    send(self.fee_receiver, self.balance)
    amount: uint256 = staticcall frxeth.balanceOf(self)
    assert extcall frxeth.transfer(self.fee_receiver, amount, default_return_value=True)


@external
def set_fee_receiver(_fee_receiver: address):
    """
    @dev Set _fee_receiver=empty(address) to disable fee collection.
    """
    assert msg.sender == admin  # dev: only admin

    self.fee_receiver = _fee_receiver