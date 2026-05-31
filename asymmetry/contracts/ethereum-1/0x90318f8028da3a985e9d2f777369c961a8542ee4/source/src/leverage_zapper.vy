# @version 0.4.1

"""
@title USDaf Leverage Zapper
@license MIT
@author https://github.com/johnnyonline
@notice Leverages up and down USDaf positions in a single transaction
"""

from ethereum.ercs import IERC20

from interfaces import IExchange
from interfaces import IPriceFeed
from interfaces import ITroveManager
from interfaces import IBorrowerOperations

import periphery.ownable_2step as ownable
import periphery.sweep as sweep


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

initializes: sweep[ownable := ownable]
exports: sweep.sweep_token


# ============================================================================================
# Constants
# ============================================================================================


WAD: public(constant(uint256)) = 10**18
MIN_DEBT: public(constant(uint256)) = 2_000 * WAD
MAX_ITERATIONS: public(constant(uint256)) = 20

USDAF: public(constant(IERC20)) = IERC20(0x85E30b8b263bC64d94b827ed450F2EdFEE8579dA)

LTV: public(immutable(uint256))

COLLATERAL_TOKEN: public(immutable(IERC20))
EXCHANGE: public(immutable(IExchange))
PRICE_ORACLE: public(immutable(IPriceFeed))
TROVE_MANAGER: public(immutable(ITroveManager))
BORROWER_OPERATIONS: public(immutable(IBorrowerOperations))


# ============================================================================================
# Storage
# ============================================================================================


max_iterations: uint256


# ============================================================================================
# Constructor
# ============================================================================================


@deploy
def __init__(
    owner: address,
    collateral_token: address,
    exchange: address,
    price_feed: address,
    trove_manager: address,
    borrower_operations: address,
):
    """
    @notice Initialize the contract
    @param owner Address of the owner
    @param collateral_token Address of the collateral token
    @param exchange Address of the Exchange contract
    @param price_feed Address of the PriceFeed contract
    @param trove_manager Address of the TroveManager contract
    @param borrower_operations Address of the BorrowerOperations contract
    """
    ownable.__init__(owner)

    self.max_iterations = 10

    COLLATERAL_TOKEN = IERC20(collateral_token)
    EXCHANGE = IExchange(exchange)
    PRICE_ORACLE = IPriceFeed(price_feed)
    TROVE_MANAGER = ITroveManager(trove_manager)
    BORROWER_OPERATIONS = IBorrowerOperations(borrower_operations)

    LTV = WAD * WAD // staticcall BORROWER_OPERATIONS.MCR()

    extcall COLLATERAL_TOKEN.approve(borrower_operations, max_value(uint256), default_return_value=True)
    extcall COLLATERAL_TOKEN.approve(exchange, max_value(uint256), default_return_value=True)
    extcall USDAF.approve(exchange, max_value(uint256), default_return_value=True)


# ============================================================================================
# View functions
# ============================================================================================


@external
@view
def get_trove_data(trove_id: uint256) -> (uint256, uint256):
    """
    @notice Gets the latest trove data for a given trove ID
    @param trove_id ID of the trove
    @return (entire_debt, entire_coll) for the specified trove ID
    """
    return self._get_trove_data(trove_id)


# ============================================================================================
# Mutative functions
# ============================================================================================


@external
def lever_up_to(
    trove_id: uint256,
    initial_collateral_amount: uint256,
    initial_borrow_token_amount: uint256,
    target_total_borrow: uint256,
    min_final_borrow_amount: uint256,
) -> uint256:
    """
    @notice Leverages up to a target borrowed amount
    @param trove_id ID of the trove
    @param initial_collateral_amount Amount of collateral to pull from the user
    @param initial_borrow_token_amount Amount of borrow token to pull from the user
    @param target_total_borrow Target amount to borrow
    @param min_final_borrow_amount Minimum amount of borrow after leveraging
    @return Current borrowed amount after leveraging
    """
    self._require_zapper_has_privileges(trove_id)

    to_deposit: uint256 = self._pull_initial_collateral(initial_collateral_amount)
    to_deposit += self._pull_and_swap_borrow_tokens(initial_borrow_token_amount)

    current_debt: uint256 = empty(uint256)
    current_collateral: uint256 = empty(uint256)
    (current_debt, current_collateral) = self._get_trove_data(trove_id)

    for i: uint256 in range(self.max_iterations, bound=MAX_ITERATIONS):
        if current_debt >= target_total_borrow:
            break

        self._deposit_collateral(trove_id, to_deposit)
        current_collateral += to_deposit

        to_borrow: uint256 = min(
            target_total_borrow - current_debt, self._get_available_borrow(trove_id, current_debt, current_collateral)
        )

        to_deposit = self._borrow_and_swap(trove_id, to_borrow)
        current_debt += to_borrow

    self._deposit_collateral(trove_id, to_deposit)

    assert current_debt >= min_final_borrow_amount, "slippage rekt you"
    return current_debt


@external
def lever_down_to(
    trove_id: uint256,
    target_total_debt: uint256,
    min_remaining_repay_amount: uint256,
    min_final_collateral_amount: uint256,
) -> uint256:
    """
    @notice Reduces leverage down to a target borrowed amount
    @param trove_id ID of the trove
    @param target_total_debt Target debt amount to maintain
    @param min_remaining_repay_amount Minimum amount remaining to repay below which we won't bother to continue
    @param min_final_collateral_amount Minimum amount of collateral after deleveraging
    @return Current collateral amount after deleveraging
    """
    self._require_zapper_has_privileges(trove_id)

    current_debt: uint256 = empty(uint256)
    current_collateral: uint256 = empty(uint256)
    current_debt, current_collateral = self._get_trove_data(trove_id)

    assert current_debt > 0 and current_debt >= target_total_debt, "!leveraged"

    remaining_repay_amount: uint256 = current_debt - target_total_debt

    for i: uint256 in range(self.max_iterations, bound=MAX_ITERATIONS):
        if remaining_repay_amount < min_remaining_repay_amount or current_debt <= MIN_DEBT:
            break

        collateral_to_withdraw: uint256 = self._get_excess_collateral(trove_id, current_debt, current_collateral)
        self._withdraw_collateral(trove_id, collateral_to_withdraw)

        available_to_repay: uint256 = self._swap(collateral_to_withdraw, False)
        to_repay: uint256 = min(available_to_repay, remaining_repay_amount)

        if to_repay > 0:
            self._repay(trove_id, to_repay)

        remaining_repay_amount -= to_repay
        current_debt -= to_repay
        current_collateral -= collateral_to_withdraw

    collateral_amount: uint256 = self._redeposit_leftover_usdaf(trove_id)
    current_collateral += collateral_amount

    assert current_collateral >= min_final_collateral_amount, "slippage rekt you"
    return current_collateral


# ============================================================================================
# Internal view functions
# ============================================================================================


@view
def _require_zapper_has_privileges(trove_id: uint256):
    """
    @notice Checks if the zapper has the necessary privileges to act on a trove
    @param trove_id ID of the trove
    """
    manager: address = empty(address)
    receiver: address = empty(address)
    (manager, receiver) = staticcall BORROWER_OPERATIONS.removeManagerReceiverOf(trove_id)
    assert receiver == self, "zapper != receiver"
    assert manager == self, "zapper != manager"


@view
def _get_trove_data(trove_id: uint256) -> (uint256, uint256):
    """
    @notice Gets the latest trove data for a given trove ID
    @return (entire_debt, entire_coll) for the specified trove ID
    """
    entire_debt: uint256 = empty(uint256)
    entire_coll: uint256 = empty(uint256)
    redist_bold_debt_gain: uint256 = empty(uint256)
    redist_coll_gain: uint256 = empty(uint256)
    accrued_interest: uint256 = empty(uint256)
    recorded_debt: uint256 = empty(uint256)
    annual_interest_rate: uint256 = empty(uint256)
    weighted_recorded_debt: uint256 = empty(uint256)
    accrued_batch_management_fee: uint256 = empty(uint256)
    last_interest_rate_adj_time: uint256 = empty(uint256)

    (
        entire_debt,
        entire_coll,
        redist_bold_debt_gain,
        redist_coll_gain,
        accrued_interest,
        recorded_debt,
        annual_interest_rate,
        weighted_recorded_debt,
        accrued_batch_management_fee,
        last_interest_rate_adj_time,
    ) = staticcall TROVE_MANAGER.getLatestTroveData(trove_id)

    return entire_debt, entire_coll


@view
def _apply_1pct_slippage(amount: uint256) -> uint256:
    """
    @notice Applies a 1% slippage to an amount
    @param amount Amount to apply slippage to
    @return Amount after applying slippage
    """
    return amount * 99 // 100


# ============================================================================================
# Internal mutated functions
# ============================================================================================


def _pull_initial_collateral(amount: uint256) -> uint256:
    """
    @notice Pulls initial collateral from the user
    @param amount Amount of collateral to pull
    @return Amount pulled
    """
    if amount > 0:
        extcall COLLATERAL_TOKEN.transferFrom(msg.sender, self, amount, default_return_value=True)
    return amount


def _pull_and_swap_borrow_tokens(amount: uint256) -> uint256:
    """
    @notice Pulls borrow tokens from the user and swaps them for collateral
    @param amount Amount of borrow tokens to pull
    @return Amount of collateral received after the swap
    """
    if amount > 0:
        extcall USDAF.transferFrom(msg.sender, self, amount, default_return_value=True)
        return self._swap(amount, True)
    return 0


def _redeposit_leftover_usdaf(trove_id: uint256) -> uint256:
    """
    @notice Deposits any excess USDaf back into the trove as collateral
    @param trove_id ID of the trove to deposit collateral into
    @return Amount of collateral deposited
    """
    excess_borrow_token: uint256 = staticcall USDAF.balanceOf(self)
    if excess_borrow_token == 0:
        return 0

    collateral_amount: uint256 = self._swap(excess_borrow_token, True)
    self._deposit_collateral(trove_id, collateral_amount)
    return collateral_amount


def _deposit_collateral(trove_id: uint256, amount: uint256):
    """
    @notice Deposits collateral to a trove
    @param trove_id ID of the trove to deposit collateral into
    @param amount Amount of collateral to deposit
    """
    extcall BORROWER_OPERATIONS.addColl(trove_id, amount)


def _withdraw_collateral(trove_id: uint256, amount: uint256):
    """
    @notice Withdraws collateral from a trove
    @param trove_id ID of the trove to withdraw collateral from
    @param amount Amount of collateral to withdraw
    """
    extcall BORROWER_OPERATIONS.withdrawColl(trove_id, amount)


def _repay(trove_id: uint256, amount: uint256):
    """
    @notice Repays an amount of USDaf to a trove
    @param trove_id ID of the trove to repay to
    @param amount Amount of USDaf to repay
    """
    extcall BORROWER_OPERATIONS.repayBold(trove_id, amount)


def _borrow_and_swap(trove_id: uint256, amount: uint256) -> uint256:
    """
    @notice Borrows an amount and swaps it for the desired token
    @param amount Amount to borrow
    @param token Address of the token to swap to
    @return Amount received after the swap
    """
    extcall BORROWER_OPERATIONS.withdrawBold(trove_id, amount, max_value(uint256))
    return self._swap(amount, True)


def _swap(amount: uint256, from_af: bool) -> uint256:
    """
    @notice Swaps between USDaf and the collateral token
    @param amount Amount of tokens to swap
    @param from_af True if swapping from USDaf to the collateral, False otherwise
    @return Amount of tokens received
    """
    return extcall EXCHANGE.swap(amount, 0, from_af)


def _get_available_borrow(trove_id: uint256, entire_debt: uint256, entire_coll: uint256) -> uint256:
    """
    @notice Calculates the available amount that can be borrowed for a given trove
    @dev Returns 1% less than the maximum to not borrow too much
    @param trove_id ID of the trove
    @return Maximum borrowable amount
    """
    return self._apply_1pct_slippage(self._convert_to_usd(entire_coll) * LTV // WAD) - entire_debt


def _get_excess_collateral(trove_id: uint256, entire_debt: uint256, entire_coll: uint256) -> uint256:
    """
    @notice Calculates the amount of collateral that can be withdrawn for a given borrowed amount
    @dev Removes 1% slippage from the maximum collateral that can be withdrawn
    @param trove_id ID of the trove
    @return Excess collateral amount
    """
    return self._apply_1pct_slippage(entire_coll - self._convert_from_usd(entire_debt * WAD // LTV))


def _get_price() -> uint256:
    """
    @notice Gets the current price of the collateral token in USD
    @dev Reverts if the oracle is down
    @return price of the collateral token in USD
    """
    price: uint256 = empty(uint256)
    is_oracle_down: bool = empty(bool)
    (price, is_oracle_down) = extcall PRICE_ORACLE.fetchPrice()
    assert not is_oracle_down, "!oracle"
    return price


def _convert_to_usd(amount: uint256) -> uint256:
    """
    @notice Converts an amount of collateral token to its USD equivalent
    @param amount Amount of the token
    @return Amount in USD
    """
    return amount * self._get_price() // WAD


def _convert_from_usd(amount: uint256) -> uint256:
    """
    @notice Converts an amount in USD to its equivalent in the collateral token
    @param amount Amount in USD
    @return Amount in the collateral token
    """
    return amount * WAD // self._get_price()
