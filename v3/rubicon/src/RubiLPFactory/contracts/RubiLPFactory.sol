// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IAquilaFactory} from "./interfaces/IAquilaFactory.sol";
import {IAquilaRouter} from "./interfaces/IAquilaRouter.sol";
import {MintedERC20} from "./helpers/MintedERC20.sol";

error AdminOnly();
error BadAddress();
error BadEthAmount();
error AlreadyInitialized();

contract RubiLPFactory is ReentrancyGuard {
    bool private initialized;
    address private admin;

    IAquilaFactory public aquilaFactory;
    IAquilaRouter public aquilaRouter;
    IERC20 public WETH;

    /// @dev Used internally
    IERC20 private constant ETH = IERC20(address(420));

    event LPCreated(
        address indexed lpAddress,
        address indexed owner,
        address baseToken,
        address quoteToken,
        string baseSymbol,
        string quoteSymbol,
        string ipfsHash
    );

    function initialize(
        address _aquilaFactory,
        address _aquilaRouter,
        address _weth,
        address _admin
    ) external {
        require(!initialized, AlreadyInitialized());
        aquilaFactory = IAquilaFactory(_aquilaFactory);
        aquilaRouter = IAquilaRouter(_aquilaRouter);
        WETH = IERC20(_weth);
        admin = _admin;

        initialized = true;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, AdminOnly());
        _;
    }

    //~~~~~~~~~~~~~~~~~~~~~~~~~~ MAIN ~~~~~~~~~~~~~~~~~~~~~~~~~~

    /// @notice Creates new ERC20 token and pairs it with ETH.
    /// @param baseName - name of the token to be created.
    /// @param baseSymbol - symbol of the token to be created.
    /// @param ipfsHash - hash of the token's logo stored on IPFS.
    /// @param baseSupply - total supply of the token to be created.
    /// @param ethAmount - initial ETH liquidity for a pair.
    function createTokenAndLPWithETH(
        string memory baseName,
        string memory baseSymbol,
        string memory ipfsHash,
        uint256 baseSupply,
        uint256 ethAmount
    ) public payable nonReentrant returns (address, address) {
        require(msg.value == ethAmount, BadEthAmount());
        address baseToken = _createToken(
            baseName,
            baseSymbol,
            ipfsHash,
            baseSupply
        );
        return (
            _createLP(
                IERC20(baseToken),
                ETH,
                baseSupply,
                ethAmount,
                ipfsHash,
                true
            ),
            baseToken
        );
    }

    /// @notice Creates new ERC20 token and pairs it with ETH,
    ///         and buys newly created token with `ethAmountToSell`.
    /// @dev Total `msg.value = ethAmount + ethAmountToSell`.
    /// @param baseName - name of the token to be created.
    /// @param baseSymbol - symbol of the token to be created.
    /// @param ipfsHash - hash of the token's logo stored on IPFS.
    /// @param baseSupply - total supply of the token to be created.
    /// @param ethAmount - initial ETH liquidity for a pair.
    /// @param ethAmountToSell - amount of ETH that should be
    ///        swapped to a newly created token.
    function createTokenAndLPWithETHAndBuy(
        string memory baseName,
        string memory baseSymbol,
        string memory ipfsHash,
        uint256 baseSupply,
        uint256 ethAmount,
        uint256 ethAmountToSell
    ) external payable nonReentrant returns (address, address) {
        require(msg.value == (ethAmount + ethAmountToSell), BadEthAmount());
        address baseToken = _createToken(
            baseName,
            baseSymbol,
            ipfsHash,
            baseSupply
        );
        address pair = _createLP(
            IERC20(baseToken),
            ETH,
            baseSupply,
            ethAmount,
            ipfsHash,
            true
        );
        _buy(baseToken, address(WETH), ethAmountToSell);
        return (pair, baseToken);
    }

    /// @notice Creates new ERC20 token and pairs it with provided quote token.
    function createTokenAndLP(
        string memory baseName,
        string memory baseSymbol,
        string memory ipfsHash,
        uint256 baseSupply,
        IERC20 quoteToken,
        uint256 quoteAmount
    ) external payable nonReentrant returns (address, address) {
        address baseToken = _createToken(
            baseName,
            baseSymbol,
            ipfsHash,
            baseSupply
        );
        return (
            _createLP(
                IERC20(baseToken),
                quoteToken,
                baseSupply,
                quoteAmount,
                ipfsHash,
                true
            ),
            baseToken
        );
    }

    /// @notice Creates new ERC20 token and pairs it with provided quote token,
    ///         and then buys newly created base token with the quote token.
    /// @dev Total `quoteToken` amount to approve is `quoteAmount + quoteAmountToSell`.
    function createTokenAndLPAndBuy(
        string memory baseName,
        string memory baseSymbol,
        string memory ipfsHash,
        uint256 baseSupply,
        IERC20 quoteToken,
        uint256 quoteAmount,
        uint256 quoteAmountToSell
    ) external payable nonReentrant returns (address, address) {
        address baseToken = _createToken(
            baseName,
            baseSymbol,
            ipfsHash,
            baseSupply
        );
        address pair = _createLP(
            IERC20(baseToken),
            quoteToken,
            baseSupply,
            quoteAmount,
            ipfsHash,
            true
        );
        _buy(baseToken, address(quoteToken), quoteAmountToSell);
        return (pair, baseToken);
    }

    //~~~~~~~~~~~~~~~~~~~~~~~~~~ INTERNAL ~~~~~~~~~~~~~~~~~~~~~~~~~~

    function _createLP(
        IERC20 baseToken,
        IERC20 quoteToken,
        uint256 baseAmount,
        uint256 quoteAmount,
        string memory ipfsHash,
        bool baseCreated
    ) internal returns (address) {
        address pair = aquilaFactory.createPair(
            address(baseToken),
            quoteToken == ETH ? address(WETH) : address(quoteToken)
        );

        if (!baseCreated) {
            baseToken.transferFrom(msg.sender, address(this), baseAmount);
        }
        baseToken.approve(address(aquilaRouter), baseAmount);

        if (quoteToken == ETH) {
            aquilaRouter.addLiquidityETH{value: quoteAmount}(
                address(baseToken),
                baseAmount,
                baseAmount,
                quoteAmount,
                address(0), // burn LP tokens
                block.timestamp
            );
            /// @dev Assign WETH's address to correctly
            ///      reflect token's metadata in event.
            quoteToken = IERC20(WETH);
        } else {
            quoteToken.transferFrom(msg.sender, address(this), quoteAmount);
            quoteToken.approve(address(aquilaRouter), quoteAmount);
            aquilaRouter.addLiquidity(
                address(baseToken),
                address(quoteToken),
                baseAmount,
                quoteAmount,
                baseAmount,
                quoteAmount,
                address(0), // burn LP tokens
                block.timestamp
            );
        }

        emit LPCreated(
            pair,
            msg.sender,
            address(baseToken),
            address(quoteToken),
            IERC20Metadata(address(baseToken)).symbol(),
            IERC20Metadata(address(quoteToken)).symbol(),
            ipfsHash
        );
        return pair;
    }

    function _createToken(
        string memory _baseName,
        string memory _baseSymbol,
        string memory _ipfsHash,
        uint256 _totalSupply
    ) internal returns (address) {
        MintedERC20 _baseToken = new MintedERC20(
            _baseName,
            _baseSymbol,
            _ipfsHash,
            _totalSupply,
            address(this) // receives total supply of `baseToken`.
        );
        return address(_baseToken);
    }

    /// @notice Buys newly created token.
    function _buy(
        address _baseToken,
        address _quoteToken,
        uint256 _quoteAmountToSell
    ) internal {
        address[] memory _path = new address[](2);
        _path[0] = _quoteToken;
        _path[1] = _baseToken;

        if (_quoteToken == address(WETH)) {
            aquilaRouter.swapExactETHForTokens{value: _quoteAmountToSell}(
                0,
                _path,
                msg.sender,
                block.timestamp
            );
        } else {
            IERC20(_quoteToken).transferFrom(
                msg.sender,
                address(this),
                _quoteAmountToSell
            );
            IERC20(_quoteToken).approve(
                address(aquilaRouter),
                _quoteAmountToSell
            );
            aquilaRouter.swapExactTokensForTokens(
                _quoteAmountToSell,
                0,
                _path,
                msg.sender,
                block.timestamp
            );
        }
    }

    //~~~~~~~~~~~~~~~~~~~~~~~~~~ ADMIN-ONLY ~~~~~~~~~~~~~~~~~~~~~~~~~~

    function updateFactory(address newFactory) external onlyAdmin {
        require(newFactory != address(0), BadAddress());
        aquilaFactory = IAquilaFactory(newFactory);
    }

    function updateRouter(address newRouter) external onlyAdmin {
        require(newRouter != address(0), BadAddress());
        aquilaRouter = IAquilaRouter(newRouter);
    }

    function changeAdmin(address newAdmin) external onlyAdmin {
        require(newAdmin != address(0), BadAddress());
        admin = newAdmin;
    }
}
