# @version 0.3.7
"""
@title Stable Deposit Burner
@notice Deposits assets into the 3pool
"""

interface ERC20:
    def approve(_to: address, _value: uint256): nonpayable
    def transfer(_to: address, _value: uint256) -> bool: nonpayable
    def transferFrom(_from: address, _to: address, _value: uint256) -> bool: nonpayable
    def balanceOf(_owner: address) -> uint256: view
    def decimals() -> uint256: view

interface StableSwap:
    def add_liquidity(amounts: uint256[N_COINS], min_mint_amount: uint256): nonpayable
    def coins(_i: uint256) -> address: view
    def get_virtual_price() -> uint256: view

interface Proxy:
    def burners(_coin: address) -> address: view


N_COINS: constant(uint256) = 3
ETH_ADDRESS: constant(address) = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE
ONE: constant(uint256) = 10 ** 18  # Precision

BPS: constant(uint256) = 100 * 100
slippage: public(uint256)

PROXY: immutable(Proxy)
FEE_DISTRIBUTER: constant(address) = 0xA464e6DCda8AC41e03616F95f4BC98a13b8922Dc
POOL: immutable(StableSwap)
LP: immutable(ERC20)
COINS: immutable(ERC20[N_COINS])
DEC: immutable(uint256[N_COINS])

is_killed: public(bool)

owner: public(address)
emergency_owner: public(address)
future_owner: public(address)
future_emergency_owner: public(address)


@external
def __init__(_owner: address, _emergency_owner: address):
    """
    @notice Contract constructor
    @param _owner Owner address. Can kill the contract and set slippage
    @param _emergency_owner Emergency owner address. Can kill the contract.
    """
    PROXY = Proxy(0xeCb456EA5365865EbAb8a2661B0c503410e9B347)
    POOL = StableSwap(0xbEbc44782C7dB0a1A60Cb6fe97d0b483032FF1C7)
    LP = ERC20(0x6c3F90f043a72FA612cbac8115EE7e52BDe6E490)

    self.owner = _owner
    self.emergency_owner = _emergency_owner
    self.slippage = 50  # 0.5%

    coins: ERC20[N_COINS] = empty(ERC20[N_COINS])
    dec: uint256[N_COINS] = empty(uint256[N_COINS])
    for i in range(N_COINS):
        coins[i] = ERC20(POOL.coins(i))
        coins[i].approve(POOL.address, max_value(uint256))
        dec[i] = 10 ** (18 - coins[i].decimals())
    COINS = coins
    DEC = dec


@internal
def _burn(_amounts: uint256[N_COINS]):
    amount: uint256 = 0
    for i in range(N_COINS):
        amount += _amounts[i] * DEC[i]

    min_amount: uint256 = amount * ONE / POOL.get_virtual_price()
    min_amount -= min_amount * self.slippage / BPS

    POOL.add_liquidity(_amounts, min_amount)

    amount = LP.balanceOf(self)
    LP.transfer(FEE_DISTRIBUTER, amount)


@external
def burn(_coin: ERC20) -> bool:
    """
    @notice Convert `_coin` by depositing
    @param _coin Address of the coin being converted
    @return bool success
    """
    assert not self.is_killed  # dev: is killed
    assert _coin in COINS

    amount: uint256 = _coin.balanceOf(msg.sender)
    assert _coin.transferFrom(msg.sender, self, amount, default_return_value=True)  # safe transfer

    if _coin == COINS[N_COINS - 1]:  # Do it once
        amounts: uint256[N_COINS] = empty(uint256[N_COINS])
        for i in range(N_COINS):
            amounts[i] = COINS[i].balanceOf(self)
        self._burn(amounts)

    return True


@external
def burn_amount(_amounts_to_burn: uint256[N_COINS]):
    """
    @dev Useful when the total amount to burn is so large that it fails from slippage
    @param _amounts_to_burn Amounts of coins to burn
    """
    assert not self.is_killed  # dev: is killed

    for coin in COINS:
        if PROXY.burners(coin.address) == self:
            amount: uint256 = coin.balanceOf(self)
            assert coin.transferFrom(PROXY.address, self, amount, default_return_value=True)  # safe transfer

    for i in range(N_COINS):
        amount: uint256 = COINS[i].balanceOf(self)
        assert amount >= _amounts_to_burn[i], "Insufficient balance"

    self._burn(_amounts_to_burn)


@external
def set_slippage(_slippage: uint256):
    assert msg.sender == self.owner
    assert _slippage < BPS

    self.slippage = _slippage


@external
def recover_balance(_coin: ERC20, _amount: uint256=max_value(uint256)):
    """
    @notice Recover ERC20 tokens or Ether from this contract
    @dev Tokens are sent to proxy
    @param _coin Token address
    @param _amount Amount to recover
    """
    amount: uint256 = _amount
    if _coin.address == ETH_ADDRESS:
        if amount == max_value(uint256):
            amount = self.balance
        raw_call(PROXY.address, b"", value=amount)
    else:
        if amount == max_value(uint256):
            amount = _coin.balanceOf(self)
        _coin.transfer(PROXY.address, amount)  # do not need safe transfer


@external
def set_killed(_is_killed: bool) -> bool:
    """
    @notice Set killed status for this contract
    @dev When killed, the `burn` function cannot be called
    @param _is_killed Killed status
    @return bool success
    """
    assert msg.sender in [self.owner, self.emergency_owner]  # dev: only owner
    self.is_killed = _is_killed

    return True


@external
def commit_transfer_ownership(_future_owner: address) -> bool:
    """
    @notice Commit a transfer of ownership
    @dev Must be accepted by the new owner via `accept_transfer_ownership`
    @param _future_owner New owner address
    @return bool success
    """
    assert msg.sender == self.owner, "Only owner"
    self.future_owner = _future_owner

    return True


@external
def accept_transfer_ownership() -> bool:
    """
    @notice Accept a transfer of ownership
    @return bool success
    """
    assert msg.sender == self.future_owner, "Only owner"
    self.owner = msg.sender

    return True


@external
def commit_transfer_emergency_ownership(_future_owner: address) -> bool:
    """
    @notice Commit a transfer of emergency ownership
    @dev Must be accepted by the new owner via `accept_transfer_emergency_ownership`
    @param _future_owner New owner address
    @return bool success
    """
    assert msg.sender == self.emergency_owner, "Only owner"
    self.future_emergency_owner = _future_owner

    return True


@external
def accept_transfer_emergency_ownership() -> bool:
    """
    @notice Accept a transfer of emergency ownership
    @return bool success
    """
    assert msg.sender == self.future_emergency_owner, "Only owner"
    self.emergency_owner = msg.sender

    return True