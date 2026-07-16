import { IBracketVaultV2 } from "./IBracketVaultV2.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract VaultRouter is Ownable {
    error ZeroAddress();
    error InvalidInput();

    IERC20 public immutable TOKEN;
    IBracketVaultV2 public immutable VAULT;

    constructor(address token, address vault) Ownable(msg.sender) {
        if (token == address(0)) revert ZeroAddress();

        TOKEN = IERC20(token);
        VAULT = IBracketVaultV2(vault);

        TOKEN.approve(vault, type(uint256).max);
    }

    function multiDeposit(uint256[] calldata amounts, address[] calldata receivers) external {
        if (amounts.length != receivers.length) revert InvalidInput();

        for (uint256 i = 0; i < amounts.length; i++) {
            TOKEN.transferFrom(msg.sender, address(this), amounts[i]);
            VAULT.deposit(amounts[i], receivers[i]);
        }
    }

    function recoverERC20(address token, address to, uint256 amount) external onlyOwner {
        if (token == address(0)) revert ZeroAddress();

        IERC20(token).transfer(to, amount);
    }

    function recoverNative(address to) external onlyOwner {
        if (to == address(0)) revert ZeroAddress();

        payable(to).transfer(address(this).balance);
    }
}