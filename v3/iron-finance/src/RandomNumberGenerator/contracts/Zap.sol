// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;
pragma experimental ABIEncoderV2;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IPancakeRouter02.sol";
import "./interfaces/ILottery.sol";

contract Zap is Ownable, Initializable {
    using SafeERC20 for IERC20;
    using SafeERC20 for ERC20;
    using Address for address;

    IERC20 public outputToken;
    address public ammRouter;
    address public lottery;
    uint256 public swapFee = 2500; // 0.25%
    bool public disabled;
    uint256 public DEFAULT_SLIPPAGE = 10000; // 1%
    uint256 private constant PRECISION = 1e6;
    uint256 private constant LIMIT_SWAP_TIME = 10 minutes;

    mapping(address => address[]) public swapPaths;

    // ===== MODIFIERS =====

    modifier notContract() {
        require(!address(msg.sender).isContract(), "contract not allowed");
        // solhint-disable-next-line avoid-tx-origin
        require(msg.sender == tx.origin, "proxy contract not allowed");
        _;
    }

    modifier notDisabled() {
        require(!disabled, "Zap function was disabled");
        _;
    }

    function initialize(
        address _lottery,
        address _ammRouter,
        address _outputToken
    ) external initializer onlyOwner {
        require(_outputToken != address(0), "Invalid address");
        require(_lottery != address(0), "Invalid address");
        require(_ammRouter != address(0), "AMM Router cannot be 0 address");
        ammRouter = _ammRouter;
        outputToken = IERC20(_outputToken);
        lottery = _lottery;
    }

    // ======= VIEW FUNCTIONS =========

    function tokenBalance() public view returns (uint256) {
        return outputToken.balanceOf(address(this));
    }

    // ======= MUTATIVE FUNCTIONS =========

    // we will only accept pegged to $1 tokens like BUSD, USDT, USDC as input for zapBuy
    // we assume 1 IRON ~ 1 Input token (swapfee must be included)
    // Some IRONs will be pre-deposited to the contract to cover the slightly differences
    function zapBuy(
        uint256 _lotteryId,
        uint8 _numberOfTickets,
        uint16[] calldata _chosenNumbersForEachTicket,
        address _inputToken
    ) external notContract notDisabled {
        require(lottery != address(0), "Lottery address does not exists");
        uint256 ticketCost = ILottery(lottery).costToBuyTickets(_lotteryId, _numberOfTickets);
        uint256 totalCost = ticketCost + ((ticketCost * swapFee) / PRECISION);
        ERC20 inputToken = ERC20(_inputToken);
        uint8 missing_decimals = 18 - inputToken.decimals();
        uint256 denormalized_amount = totalCost / (10 ** missing_decimals);
        inputToken.safeTransferFrom(msg.sender, address(this), denormalized_amount);
        uint256 minOutputAmount = totalCost - ((totalCost * DEFAULT_SLIPPAGE) / PRECISION);
        _swap(denormalized_amount, minOutputAmount, _inputToken);
        outputToken.safeApprove(lottery, 0);
        outputToken.safeApprove(lottery, ticketCost);
        ILottery(lottery).zapBatchBuyLottoTicket(_lotteryId, msg.sender, _numberOfTickets, _chosenNumbersForEachTicket);
    }

    // ======= RESTRICTED FUNCTIONS =========

    function updateSwapRoute(address tokenInput, address[] memory _swapPath) external onlyOwner {
        require(tokenInput != address(0), "tokenInput cannot be 0 address");
        require(_swapPath.length > 0, "Swap token address invalid");
        for(uint256 i = 0; i< _swapPath.length; i ++) {
            require(_swapPath[i]!= address(0), "tokenInput cannot be 0 address");
        }
        require(_swapPath[_swapPath.length - 1] == address(outputToken), "Swap path must have output token");
        swapPaths[tokenInput] = _swapPath;
    }

    function updateAMMRouter(address _ammRouter) external onlyOwner {
        require(_ammRouter != address(0), "AMM Router cannot be 0 address");
        ammRouter = _ammRouter;
    }

    function updateSwapFee(uint256 _swapFee) external onlyOwner {
        require(_swapFee <= 100000, "Swap fee is way too high");
        swapFee = _swapFee;
    }

    function updateDefaultSlippage(uint256 _defaultSlippage) external onlyOwner {
        require(_defaultSlippage <= 20000, "Default slippage is way too high");
        DEFAULT_SLIPPAGE = _defaultSlippage;
    }

    function rescueOutputToken() external onlyOwner {
        outputToken.safeTransfer(owner(), tokenBalance());
    }

    // ======= INTERNAL FUNCTIONS =========

    function _swap(uint256 inputAmount, uint256 minOutputAmount, address inputToken) internal {
        require(inputAmount > 0, "Input amount must be greater than 0");
        require(swapPaths[inputToken].length > 0, "Swap token address invalid");
        require(swapPaths[inputToken][swapPaths[inputToken].length - 1] == address(outputToken), "Swap path must have output token");
        ERC20 _inputToken = ERC20(inputToken);
        _inputToken.safeApprove(ammRouter, 0);
        _inputToken.safeApprove(ammRouter, inputAmount);
        IPancakeRouter02(ammRouter).swapExactTokensForTokens(inputAmount, minOutputAmount , swapPaths[inputToken], address(this), block.timestamp + LIMIT_SWAP_TIME);
    }
}
