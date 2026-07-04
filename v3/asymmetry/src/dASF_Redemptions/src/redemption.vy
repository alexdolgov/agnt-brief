# @version 0.4.1

"""
@title dASF Redemptions
@license MIT
@author yearn.finance, asymmetry.finance (johnnyonline)
@notice
    redemption.vy is used to redeem dASF for ASF using USDaf
    ASF/USD price is fetched from Curve and Chainlink oracles
    ASF is sold at a discounted rate, which is determined by the lock period
"""

from ethereum.ercs import IERC20

from interfaces import AggregatorV3Interface
from interfaces import IVEASF
from interfaces import IDASF
from interfaces import IRedemption

import ownable_2step as ownable


# ============================================================================================
# Modules
# ============================================================================================


initializes: ownable
exports: (
    ownable.owner,
    ownable.pending_owner,
    ownable.transfer_ownership,
    ownable.accept_ownership,
)


# ============================================================================================
# Interfaces
# ============================================================================================


implements: IRedemption


# ============================================================================================
# Constants
# ============================================================================================


WAD: constant(uint256) = 10**18
MAX_WEEKS: constant(uint256) = 52


# ============================================================================================
# Immutable
# ============================================================================================


PRICE_FEED: public(immutable(AggregatorV3Interface))
ASF: public(immutable(IERC20))
VEASF: public(immutable(IVEASF))
DASF: public(immutable(IDASF))
USDAF: public(immutable(IERC20))


# ============================================================================================
# Storage
# ============================================================================================


killed: public(bool)
payee: public(address)
min_discount: public(uint256)
max_discount: public(uint256)
min_lock_weeks: public(uint256)
privileged: public(HashMap[address, bool])


# ============================================================================================
# Constructor
# ============================================================================================


@deploy
def __init__(
    owner: address,
    payee: address,
    price_feed: address,
    asf: address,
    veasf: address,
    dasf: address,
    usdaf: address,
):
    """
    @notice Initialize the contract
    @param owner Address of the owner
    @param payee Address of the payee
    @param price_feed Address of the price feed
    @param asf Address of the ASF token
    @param veasf Address of the veASF token
    @param dasf Address of the dASF token
    @param usdaf Address of the USDaf token
    """
    ownable.__init__(owner)
    assert payee != empty(address), "!payee"

    self.min_discount = 20 * 10**16  # 20%
    self.max_discount = 80 * 10**16  # 80%
    self.min_lock_weeks = 0

    self.payee = payee

    PRICE_FEED = AggregatorV3Interface(price_feed)
    ASF = IERC20(asf)
    VEASF = IVEASF(veasf)
    DASF = IDASF(dasf)
    USDAF = IERC20(usdaf)

    assert extcall ASF.approve(
        veasf, max_value(uint256), default_return_value=True
    )

    log IRedemption.SetDiscount(
        min_discount=self.min_discount, max_discount=self.max_discount
    )
    log IRedemption.SetMinLockWeeks(min_lock_weeks=self.min_lock_weeks)
    log IRedemption.SetPayee(new_payee=payee)


# ============================================================================================
# View functions
# ============================================================================================


@external
@view
def coin_required(amount: uint256, weeks: uint256 = MAX_WEEKS) -> uint256:
    """
    @notice Estimate the required amount of USDaf to redeem the amount of dASF for ASF
    @param amount Amount of dASF
    @param weeks Number of weeks to lock the ASF for
    @return Amount of USDaf required
    """
    return self._coin_required(amount, weeks)


@external
@view
def discount(weeks: uint256) -> uint256:
    """
    @notice Get the discount for a given number of weeks
    @param weeks Number of weeks to lock the ASF for
    @return Discount in percentage (18 decimals)
    """
    return self._discount(weeks)


@external
@view
def latest_price() -> uint256:
    """
    @notice Get the latest price of ASF in USDaf
    @return Price of ASF in USDaf (18 decimals)
    """
    return self._latest_price()


# ============================================================================================
# Mutative functions
# ============================================================================================


@external
def redeem(
    amount: uint256,
    weeks: uint256 = MAX_WEEKS,
    max_coin_required: uint256 = max_value(uint256),
    recipient: address = msg.sender,
):
    """
    @notice Redeem your dASF for ASF using a USDaf
    @dev If locking, rounds down the amount of dASF to avoid overpaying
    @param amount amount of dASF to spend
    @param weeks number of weeks to lock the ASF for
    @param max_coin_required maximum amount of USDaf to pay
    @param recipient of the exercised ASF
    """
    self._check_killed()
    assert staticcall ASF.balanceOf(self) >= amount, "!ASF"

    rounded_amount: uint256 = amount
    if weeks > 0:
        rounded_amount -= amount % WAD

    coin_required: uint256 = self._coin_required(rounded_amount, weeks)
    assert coin_required > 0, "!coin"
    assert coin_required <= max_coin_required, "slippage rekt you"

    extcall DASF.burn(msg.sender, rounded_amount)
    assert extcall USDAF.transferFrom(
        msg.sender, self.payee, coin_required, default_return_value=True
    )

    if weeks == 0:
        assert extcall ASF.transfer(
            recipient, rounded_amount, default_return_value=True
        )
    else:
        assert extcall VEASF.lock(
            recipient, rounded_amount // WAD, weeks, default_return_value=True
        )

    log IRedemption.Redeem(
        sender=msg.sender,
        recipient=recipient,
        amount=rounded_amount,
        coin_required=coin_required,
        weeks=weeks,
    )


# ============================================================================================
# Privileged user functions
# ============================================================================================


@external
def privileged_redeem(amount: uint256, recipient: address = msg.sender):
    """
    @notice Redeem your dASF for ASF for free
    @dev Only callable by privileged users
    @param amount amount of dASF to spend
    @param recipient of the exercised ASF
    """
    self._check_killed()
    assert self.privileged[msg.sender], "!privileged"
    assert staticcall ASF.balanceOf(self) >= amount, "!ASF"

    extcall DASF.burn(msg.sender, amount)
    assert extcall ASF.transfer(recipient, amount, default_return_value=True)

    log IRedemption.Redeem(
        sender=msg.sender,
        recipient=recipient,
        amount=amount,
        coin_required=0,
        weeks=0,
    )


# ============================================================================================
# Owner functions
# ============================================================================================


@external
def set_payee(new_payee: address):
    """
    @notice Set the payee of the USDaf used for redemptions
    @dev Only callable by the owner
    @param new_payee the new payee
    """
    ownable._check_owner()
    assert new_payee != empty(address), "!payee"

    self.payee = new_payee

    log IRedemption.SetPayee(new_payee=new_payee)


@external
def set_discount(min_discount: uint256, max_discount: uint256):
    """
    @notice Set the min and max discount for redemptions
    @dev Only callable by the owner
    @param min_discount the minimum discount in percentage (18 decimals)
    @param max_discount the maximum discount in percentage (18 decimals)
    """
    ownable._check_owner()
    assert min_discount < max_discount, "!min_discount"
    assert max_discount < WAD, "!max_discount"

    self.min_discount = min_discount
    self.max_discount = max_discount

    log IRedemption.SetDiscount(
        min_discount=min_discount, max_discount=max_discount
    )


@external
def set_min_lock_weeks(min_lock_weeks: uint256):
    """
    @notice Set the minimum lock weeks for redemptions
    @dev Only callable by the owner
    @param min_lock_weeks the minimum lock weeks
    """
    ownable._check_owner()
    assert min_lock_weeks <= MAX_WEEKS, "!min_lock_weeks"

    self.min_lock_weeks = min_lock_weeks

    log IRedemption.SetMinLockWeeks(min_lock_weeks=min_lock_weeks)


@external
def set_privileged(user: address, privileged: bool):
    """
    @notice Set the privileged status of a user
    @dev Only callable by the owner
    @param user the user to set
    @param privileged the privileged status
    """
    ownable._check_owner()
    self.privileged[user] = privileged

    log IRedemption.SetPrivileged(user=user, privileged=privileged)


@external
def kill():
    """
    @notice Stop the contract from being used and reclaim ASF
    @dev Only callable by the owner
    """
    self._check_killed()
    ownable._check_owner()

    self.killed = True

    balance: uint256 = staticcall ASF.balanceOf(self)
    if balance > 0:
        assert extcall ASF.transfer(
            ownable.owner, balance, default_return_value=True
        )

    log IRedemption.Killed(balance=balance)


@external
def sweep(token: address) -> uint256:
    """
    @notice Sweep any token other than ASF to the owner
    @dev Only callable by the owner
    @param token address of the token to sweep
    @return amount of token swept
    """
    assert self.killed or token != ASF.address, "!token"
    ownable._check_owner()

    amount: uint256 = staticcall IERC20(token).balanceOf(self)
    assert amount > 0, "!balance"

    assert extcall IERC20(token).transfer(
        ownable.owner, amount, default_return_value=True
    )

    log IRedemption.Sweep(token=token, amount=amount)

    return amount


# ============================================================================================
# Internal functions
# ============================================================================================


@internal
@view
def _coin_required(amount: uint256, weeks: uint256) -> uint256:
    assert weeks >= self.min_lock_weeks, "!weeks"
    return (
        amount
        * self._latest_price() // WAD
        * (WAD - self._discount(weeks)) // WAD
    )


@internal
@view
def _discount(weeks: uint256) -> uint256:
    min_discount: uint256 = self.min_discount
    max_discount: uint256 = self.max_discount
    return min_discount + (
        (max_discount - min_discount) * min(weeks, MAX_WEEKS) // MAX_WEEKS
    )


@internal
@view
def _latest_price() -> uint256:
    return convert(staticcall PRICE_FEED.latestAnswer(), uint256)


@internal
def _check_killed():
    assert self.killed == False, "killed"
