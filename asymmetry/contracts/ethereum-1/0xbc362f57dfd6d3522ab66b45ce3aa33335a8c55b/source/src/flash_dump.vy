# @version 0.4.1

"""
@title dASF Flash Dump
@license MIT
@author asymmetry.finance (johnnyonline)
@notice
    flash_dump.vy is used to redeem dASF using a flash loan
    and instantly dump the ASF for USA.d
"""

from ethereum.ercs import IERC20

from interfaces import ICurveCryptoPool
from interfaces import ICurveStablePool
from interfaces import IRedemption
from interfaces import IBalancerVault
from interfaces import IFlashLoanRecipient

# ============================================================================================
# Interfaces
# ============================================================================================


implements: IFlashLoanRecipient


# ============================================================================================
# Constants
# ============================================================================================


USDC_DECIMALS_DIFF: constant(uint256) = 10**12
SLIPPAGE_PRECISION: constant(uint256) = 10_000
MAX_ASSETS_LENGTH: constant(uint256) = 1
MAX_BYTES_LENGTH: constant(uint256) = 32

# Tokens
USAD: immutable(IERC20)
ASF: constant(IERC20) = IERC20(0x59a529070fBb61e6D6c91f952CcB7f35c34Cf8Aa)
USDC: constant(IERC20) = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48)
WETH: constant(IERC20) = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2)

# Curve USA.d/USDC pool
USAD_USDC_CURVE_POOL_USAD_INDEX: constant(int128) = 0
USAD_USDC_CURVE_POOL_USDC_INDEX: constant(int128) = 1
USAD_USDC_CURVE_POOL: immutable(ICurveStablePool)

# Curve ASF/ETH pool
ASF_ETH_CURVE_POOL_ASF_INDEX: constant(uint256) = 1
ASF_ETH_CURVE_POOL_WETH_INDEX: constant(uint256) = 0
ASF_WETH_CURVE_POOL: constant(ICurveCryptoPool) = ICurveCryptoPool(
    0x3D0d331390D14DF42c16FC20700F7e6Ad4849c50
)

# Curve TriCrypto pool
TRICRYPTO_POOL_WETH_INDEX: constant(uint256) = 2
TRICRYPTO_POOL_USDC_INDEX: constant(uint256) = 0
TRICRYPTO_POOL: constant(ICurveCryptoPool) = ICurveCryptoPool(
    0x7F86Bf177Dd4F3494b841a37e810A34dD56c829B
)

# Balancer
BALANCER_VAULT: constant(IBalancerVault) = IBalancerVault(
    0xBA12222222228d8Ba445958a75a0704d566BF2C8
)


# ============================================================================================
# Immutable
# ============================================================================================


DASF: immutable(IERC20)
REDEMPTION: immutable(IRedemption)


# ============================================================================================
# Constructor
# ============================================================================================


# @todo -- once usa.d is deployed, make `USAD` and `USAD_USDC_CURVE_POOL` constant
@deploy
def __init__(
    dasf: address,
    redemption: address,
):
    """
    @notice Initialize the contract
    @param dasf Address of the dASF token
    @param redemption Address of the Redemption contract
    """
    USAD = IERC20(0xf939E0A03FB07F59A73314E73794Be0E57ac1b4E) # crvUSD
    DASF = IERC20(dasf)
    REDEMPTION = IRedemption(redemption)
    USAD_USDC_CURVE_POOL = ICurveStablePool(0x4DEcE678ceceb27446b35C672dC7d61F30bAD69E) # USDC/crvUSD

    self._max_approve(DASF, REDEMPTION.address)
    self._max_approve(USAD, REDEMPTION.address)
    self._max_approve(USDC, USAD_USDC_CURVE_POOL.address)
    self._max_approve(ASF, ASF_WETH_CURVE_POOL.address)
    self._max_approve(WETH, TRICRYPTO_POOL.address)


# ============================================================================================
# Mutative functions
# ============================================================================================


@external
def flash_dump(
    amount: uint256,
    slippage: uint256,
    min_out: uint256,
    recipient: address = msg.sender,
):
    """
    @notice Flash dump dASF for USA.d
    @param amount Amount of dASF to redeem
    @param slippage Slippage tolerance
    @param min_out Minimum amount of USA.d to receive
    @param recipient Address to receive USA.d
    """
    # calc coin required + slippage
    coin_required: uint256 = staticcall REDEMPTION.coin_required(amount, 0)
    flash_loan_amount: uint256 = (
        coin_required * slippage // SLIPPAGE_PRECISION
    ) // USDC_DECIMALS_DIFF

    # pull dASF
    assert extcall DASF.transferFrom(
        msg.sender, self, amount, default_return_value=True
    )

    # swap dASF for USA.d
    extcall BALANCER_VAULT.flashLoan(
        self,
        [USDC.address],
        [flash_loan_amount],
        abi_encode(amount),
    )

    # transfer USA.d to recipient
    balance: uint256 = staticcall USAD.balanceOf(self)
    assert balance >= min_out, "slippage rekt you"
    assert extcall USAD.transfer(recipient, balance, default_return_value=True)


@external
def receiveFlashLoan(
    tokens: DynArray[address, MAX_ASSETS_LENGTH],
    amounts: DynArray[uint256, MAX_ASSETS_LENGTH],
    feeAmounts: DynArray[uint256, MAX_ASSETS_LENGTH],
    userData: Bytes[MAX_BYTES_LENGTH],
):
    """
    @notice Receive flash loan from Balancer Vault
            swap dASF for USA.d using several Curve pools
            and repay the flash loan
    @param tokens Array of tokens
    @param amounts Array of amounts
    @param feeAmounts Array of fee amounts
    @param userData User data
    """
    amount_to_repay: uint256 = amounts[0]

    # USDC --> USA.d
    extcall USAD_USDC_CURVE_POOL.exchange(
        USAD_USDC_CURVE_POOL_USDC_INDEX,
        USAD_USDC_CURVE_POOL_USAD_INDEX,
        amount_to_repay,
        0,
    )

    # dASF --> ASF
    amount: uint256 = abi_decode(userData, uint256)
    extcall REDEMPTION.redeem(amount, 0)

    # ASF --> WETH
    amount = extcall ASF_WETH_CURVE_POOL.exchange(
        ASF_ETH_CURVE_POOL_ASF_INDEX,
        ASF_ETH_CURVE_POOL_WETH_INDEX,
        amount,
        0,
    )

    # WETH --> USDC
    available_to_repay: uint256 = extcall TRICRYPTO_POOL.exchange(
        TRICRYPTO_POOL_WETH_INDEX,
        TRICRYPTO_POOL_USDC_INDEX,
        amount,
        0,
    )

    # repay flash loan
    assert extcall USDC.transfer(
        BALANCER_VAULT.address, amount_to_repay, default_return_value=True
    )

    # USDC --> USA.d
    extcall USAD_USDC_CURVE_POOL.exchange(
        USAD_USDC_CURVE_POOL_USDC_INDEX,
        USAD_USDC_CURVE_POOL_USAD_INDEX,
        staticcall USDC.balanceOf(self),
        0,
    )


# ============================================================================================
# Internal functions
# ============================================================================================


@internal
def _max_approve(token: IERC20, spender: address):
    assert extcall token.approve(
        spender, max_value(uint256), default_return_value=True
    )
