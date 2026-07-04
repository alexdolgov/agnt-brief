// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";
import "hardhat/console.sol";

interface IERC1155Burnable {
    function burn(
        address account,
        uint256 id,
        uint256 amount
    ) external;

    function burnBatch(
        address account,
        uint256[] memory ids,
        uint256[] memory amounts
    ) external;
}

interface IERC1155Mintable {
    function mint(
        address account,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) external;

    function mintBatch(
        address account,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) external;
}

interface IWETH is IERC20 {
    function deposit() external payable;

    function withdraw(uint256) external;
}

contract KineSwap is AccessControl, Pausable, ERC1155Holder {
    using SafeERC20 for IERC20;

    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    address public immutable WETH;
    address public immutable CARD;

    uint256 public totalSupply;

    struct Asset {
        address token;
        uint256 amount;
    }

    mapping(uint256 => Asset[]) public assets;

    mapping(uint256 => uint256[]) public rules;

    event AssetUpdated(uint256 tokenId, address[] tokens, uint256[] amounts);
    event RuleUpdated(uint256 tokenId, uint256[] tokens);
    event Swapped(address indexed account, uint256 tokenId, uint256 amount);
    event Merged(address indexed account, uint256 tokenId, uint256 time);

    constructor(address weth_, address card_) {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());

        grantRole(MANAGER_ROLE, _msgSender());
        grantRole(PAUSER_ROLE, _msgSender());

        WETH = weth_;
        CARD = card_;
    }

    receive() external payable {}

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(AccessControl, ERC1155Receiver)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function cardAsset(uint256 tokenId) public view returns (Asset[] memory) {
        return assets[tokenId];
    }

    function cardRules(uint256 tokenId) public view returns (uint256[] memory) {
        return rules[tokenId];
    }

    function updateAsset(
        uint256 tokenId,
        address[] memory tokens,
        uint256[] memory amounts
    ) external onlyRole(MANAGER_ROLE) {
        require(tokens.length == amounts.length, "Invalid tokens or amounts");

        delete assets[tokenId];

        for (uint256 i = 0; i < tokens.length; i++) {
            Asset memory asset = Asset({token: tokens[i], amount: amounts[i]});

            assets[tokenId].push(asset);
        }

        emit AssetUpdated(tokenId, tokens, amounts);
    }

    function updateRules(uint256 tokenId, uint256[] memory tokens)
        external
        onlyRole(MANAGER_ROLE)
    {
        rules[tokenId] = tokens;

        emit RuleUpdated(tokenId, tokens);
    }

    function swap(uint256 tokenId, uint256 amount) external whenNotPaused {
        require(amount > 0, "Amount must be greater than zero");
        Asset[] memory data = assets[tokenId];
        for (uint256 i = 0; i < data.length; i++) {
            if (data[i].token == WETH) {
                uint256 tokenBalance = IERC20(WETH).balanceOf(address(this));
                if (tokenBalance > 0) {
                    IWETH(WETH).withdraw(tokenBalance);
                }
                Address.sendValue(payable(_msgSender()), amount);
            } else {
                IERC20(data[i].token).transfer(
                    _msgSender(),
                    data[i].amount * amount
                );
            }
        }

        totalSupply += amount;

        IERC1155Burnable(CARD).burn(_msgSender(), tokenId, amount);
        emit Swapped(_msgSender(), tokenId, amount);
    }

    function merge(uint256 tokenId, uint256[] memory tokens)
        external
        whenNotPaused
    {
        require(tokens.length == rules[tokenId].length, "Invalid tokens");

        for (uint256 i = 0; i < tokens.length; i++) {
            for (uint256 j = i + 1; j < tokens.length; j++) {
                if (i > j) {
                    uint256 nextId = tokens[j];
                    tokens[j] = tokens[i];
                    tokens[i] = nextId;
                }
            }
        }

        uint256[] memory amounts = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            require(tokens[i] == rules[tokenId][i], "Invalid token");
            amounts[i] = 1;
        }

        IERC1155Burnable(CARD).burnBatch(_msgSender(), tokens, amounts);
        IERC1155Mintable(CARD).mint(_msgSender(), tokenId, 1, "");
        emit Merged(_msgSender(), tokenId, block.timestamp);
    }

    function withdraw(address payable account, uint256 amount)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        Address.sendValue(account, amount);
    }

    function withdrawToken(
        address token,
        address account,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20(token).safeTransfer(account, amount);
    }
}
