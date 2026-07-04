// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// interfaces
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IAutoSwapper, IWETH } from "./interfaces/IAutoSwapper.sol";
import { IAiWhitelister } from "./interfaces/IAiWhitelister.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

// libraries
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// contract
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract AiWhitelister is IAiWhitelister, Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    mapping(address => bool) private _whitelisted;
    mapping(IERC20 => uint256) private _prices;
    address private _autoswapper;

    constructor(address autoswapper, IERC20 token, uint256 price) Ownable(msg.sender) {
        changeAutoswapper(autoswapper);
        changePrice(token, price);
    }

    /// @inheritdoc IAiWhitelister
    function getAutoswapper() external view returns (address) {
        return _autoswapper;
    }

    /// @inheritdoc IAiWhitelister
    function getPrice(IERC20 token) external view returns (uint256) {
        return _prices[token];
    }

    /// @inheritdoc IAiWhitelister
    function isWhitelisted(address user) external view returns (bool) {
        return _whitelisted[user];
    }

    /// @inheritdoc IAiWhitelister
    function changeAutoswapper(address autoswapper) public onlyOwner {
        if (autoswapper == address(0)) {
            revert AutoSwapperNull();
        }

        _autoswapper = autoswapper;

        emit NewAutoswapper(autoswapper);
    }

    /// @inheritdoc IAiWhitelister
    function changePrice(IERC20 paymentToken, uint256 price) public onlyOwner {
        _prices[paymentToken] = price;

        emit NewPrice(paymentToken, price);
    }

    /// @inheritdoc IAiWhitelister
    function whitelistETH(address user) external payable nonReentrant {
        if (user == address(0)) {
            revert NullUser();
        } else if (_whitelisted[user]) {
            revert AlreadyWhitelisted(user);
        }

        // load var to save gas from SLOAD
        IAutoSwapper autoswapper = IAutoSwapper(_autoswapper);
        address weth = address(autoswapper.router().WETH());
        uint256 price = _prices[IERC20(weth)];

        if (price == 0) {
            revert PriceNotSet(IERC20(weth));
        } else if (msg.value != price) {
            revert InsufficientETH(msg.value, price);
        }

        // wrap and send WETH token to the autoswapper
        IWETH(weth).deposit{ value: price }();
        IWETH(weth).transfer(address(autoswapper), price);

        // buy sdex and burn them using the autoswapper
        autoswapper.executeWork(IERC20(weth), autoswapper.smardexToken());

        // whitelist user
        _whitelisted[user] = true;

        emit UserWhitelisted(user);
    }

    /// @inheritdoc IAiWhitelister
    function whitelist(address user, IERC20 token) external nonReentrant {
        if (user == address(0)) {
            revert NullUser();
        } else if (_whitelisted[user]) {
            revert AlreadyWhitelisted(user);
        }

        uint256 price = _prices[token];

        if (price == 0) {
            revert PriceNotSet(token);
        }

        // load var to save gas from SLOAD
        IAutoSwapper autoswapper = IAutoSwapper(_autoswapper);

        // send token from the user to the autoswapper directly
        token.safeTransferFrom(msg.sender, address(autoswapper), price);

        // buy sdex and burn them using the autoswapper
        autoswapper.executeWork(token, autoswapper.smardexToken());

        // whitelist user
        _whitelisted[user] = true;

        emit UserWhitelisted(user);
    }
}
