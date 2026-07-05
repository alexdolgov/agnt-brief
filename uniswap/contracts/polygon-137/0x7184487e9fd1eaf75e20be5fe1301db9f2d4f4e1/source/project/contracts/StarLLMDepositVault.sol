// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {IERC20}      from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20}   from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {Pausable}    from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IStarToken {
    function mint(address to, uint256 amount) external;
    function burn(address from, uint256 amount) external;
}

interface AggregatorV3Interface {
    function latestRoundData() external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

/**
 * StarLLMDepositVault v4.0 — Multi-Admin + STAR Swap + POL Oracle
 *
 * - 다중 관리자 (AccessControl)
 * - Treasury 주소 변경 가능
 * - STAR 고정환율 SWAP (USDC/USDT → STAR, 1 USD = 1 STAR)
 * - OWNER가 SWAP 가능 여부 설정
 * - POL 가격 조회 (Chainlink Price Feed)
 * - 결제 가능 토큰 동적 추가/삭제
 */
contract StarLLMDepositVault is AccessControl, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    bytes32 public constant PULLER_ROLE = keccak256("PULLER_ROLE");

    // ── Events ────────────────────────────────────────────────────
    event Deposited(
        bytes32 indexed userId,
        address indexed token,
        address indexed payer,
        uint256 amount,
        uint256 globalNonce,
        bool    isAuto
    );
    event PullDeposit(
        bytes32 indexed userId,
        address indexed token,
        address indexed payer,
        uint256 amount,
        uint256 userNonce,
        uint256 globalNonce
    );
    event Refunded(bytes32 indexed userId, address indexed token, address indexed to, uint256 amount, bytes32 origTxHash);
    event TokenAllowed(address indexed token, bool allowed);
    event TreasurySet(address indexed treasury);
    event PullerSet(address indexed puller, bool allowed);
    event Swapped(address indexed user, address indexed token, uint256 tokenAmount, uint256 starAmount);
    event SwapEnabled(address indexed token, bool enabled);
    event StarTokenSet(address indexed starToken);
    event POLPriceFeedSet(address indexed feed);
    event GasWalletSet(address indexed gasWallet);

    // ── Storage ───────────────────────────────────────────────────
    mapping(address => bool) public allowedTokens;
    mapping(address => bool) public swapEnabled;
    mapping(address => uint256) public userPullNonce;
    address public treasury;
    address public starToken;
    address public polPriceFeed;
    address public gasWallet;
    uint256 public nonce;

    // 고정환율: 1 USD = 1 STAR (둘 다 6 decimals)
    uint256 public constant STAR_PER_USD = 1;

    modifier onlyAdmin() {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "not admin");
        _;
    }

    constructor(
        address[] memory admins,
        address _treasury,
        address[] memory tokens
    ) {
        require(_treasury != address(0), "treasury=0");
        require(admins.length > 0, "admins empty");
        treasury = _treasury;
        emit TreasurySet(_treasury);

        for (uint i; i < admins.length; ++i) {
            require(admins[i] != address(0), "admin=0");
            _grantRole(DEFAULT_ADMIN_ROLE, admins[i]);
        }

        for (uint i; i < tokens.length; ++i) {
            allowedTokens[tokens[i]] = true;
            emit TokenAllowed(tokens[i], true);
        }
    }

    // ── 1) 수동충전 ──────────────────────────────────────────────
    function deposit(bytes32 userId, address token, uint256 amount)
        external whenNotPaused nonReentrant
    {
        require(userId != bytes32(0), "userId=0");
        require(allowedTokens[token], "token");
        require(amount > 0, "amount=0");
        IERC20(token).safeTransferFrom(msg.sender, treasury, amount);
        emit Deposited(userId, token, msg.sender, amount, ++nonce, false);
    }

    // ── 2) 가스리스 수동충전 (EIP-2612) ───────────────────────────
    function depositWithPermit(
        bytes32 userId,
        address token,
        uint256 amount,
        uint256 permitValue,
        uint256 deadline,
        uint8 v, bytes32 r, bytes32 s
    ) external whenNotPaused nonReentrant {
        require(allowedTokens[token], "token");
        require(userId != bytes32(0), "userId=0");
        require(amount > 0, "amount=0");

        uint256 currentAllowance = IERC20(token).allowance(msg.sender, address(this));
        if (currentAllowance < amount) {
            try IERC20Permit(token).permit(msg.sender, address(this), permitValue, deadline, v, r, s) {}
            catch {
                require(IERC20(token).allowance(msg.sender, address(this)) >= amount, "Permit failed");
            }
        }
        IERC20(token).safeTransferFrom(msg.sender, treasury, amount);
        emit Deposited(userId, token, msg.sender, amount, ++nonce, false);
    }

    // ── 3) 자동충전 ──────────────────────────────────────────────
    function pullDeposit(
        bytes32 userId,
        address payer,
        address token,
        uint256 amount,
        uint256 expectedUserNonce
    ) external whenNotPaused nonReentrant {
        require(hasRole(PULLER_ROLE, msg.sender), "not puller");
        require(userId != bytes32(0), "userId=0");
        require(allowedTokens[token], "token");
        require(amount > 0, "amount=0");
        require(expectedUserNonce == userPullNonce[payer], "nonce mismatch");

        userPullNonce[payer]++;
        IERC20(token).safeTransferFrom(payer, treasury, amount);
        emit PullDeposit(userId, token, payer, amount, expectedUserNonce, ++nonce);
    }

    // ── 4) 고정환율 SWAP (USDC/USDT → STAR) ──────────────────────
    function swapTokenForSTAR(address token, uint256 tokenAmount)
        external whenNotPaused nonReentrant
    {
        require(swapEnabled[token], "swap disabled");
        require(allowedTokens[token], "token not allowed");
        require(tokenAmount > 0, "amount=0");
        require(starToken != address(0), "star not set");

        // 1 USD = 1 STAR (둘 다 6 decimals)
        uint256 starAmount = tokenAmount * STAR_PER_USD;

        // 사용자의 USDC/USDT를 treasury로 전송
        IERC20(token).safeTransferFrom(msg.sender, treasury, tokenAmount);

        // STAR를 사용자에게 mint (vault는 MINTER_ROLE 보유)
        IStarToken(starToken).mint(msg.sender, starAmount);

        emit Swapped(msg.sender, token, tokenAmount, starAmount);
    }

    // ── 5) 환불 기록 ──────────────────────────────────────────────
    function recordRefund(
        bytes32 userId, address token, address to, uint256 amount, bytes32 origTxHash
    ) external onlyAdmin {
        emit Refunded(userId, token, to, amount, origTxHash);
    }

    // ── 6) POL 가격 조회 (Chainlink) ─────────────────────────────
    function getPOLPrice() external view returns (uint256 price, uint256 updatedAt) {
        require(polPriceFeed != address(0), "feed not set");
        AggregatorV3Interface feed = AggregatorV3Interface(polPriceFeed);
        (, int256 answer,, uint256 time,) = feed.latestRoundData();
        require(answer > 0, "invalid price");
        return (uint256(answer), time); // 8 decimals
    }

    // ── Admin ─────────────────────────────────────────────────────
    function setAllowedToken(address t, bool ok) external onlyAdmin {
        allowedTokens[t] = ok;
        emit TokenAllowed(t, ok);
    }

    function setTreasury(address t) external onlyAdmin {
        require(t != address(0), "treasury=0");
        treasury = t;
        emit TreasurySet(t);
    }

    function setPuller(address p, bool ok) external onlyAdmin {
        if (ok) {
            _grantRole(PULLER_ROLE, p);
        } else {
            _revokeRole(PULLER_ROLE, p);
        }
        emit PullerSet(p, ok);
    }

    function setSwapEnabled(address token, bool enabled) external onlyAdmin {
        swapEnabled[token] = enabled;
        emit SwapEnabled(token, enabled);
    }

    function setStarToken(address _starToken) external onlyAdmin {
        require(_starToken != address(0), "star=0");
        starToken = _starToken;
        emit StarTokenSet(_starToken);
    }

    function setPOLPriceFeed(address feed) external onlyAdmin {
        require(feed != address(0), "feed=0");
        polPriceFeed = feed;
        emit POLPriceFeedSet(feed);
    }

    function setGasWallet(address _gasWallet) external onlyAdmin {
        require(_gasWallet != address(0), "gasWallet=0");
        gasWallet = _gasWallet;
        emit GasWalletSet(_gasWallet);
    }

    function pause() external onlyAdmin { _pause(); }
    function unpause() external onlyAdmin { _unpause(); }

    // ── allowedToken 외 실수 전송 회수 ────────────────────────────
    function rescueERC20(address token, address to, uint256 amount) external onlyAdmin {
        require(!allowedTokens[token], "Use treasury for allowed tokens");
        IERC20(token).safeTransfer(to, amount);
    }

    function destroy(address payable recipient) external onlyAdmin {
        selfdestruct(recipient);
    }
}
