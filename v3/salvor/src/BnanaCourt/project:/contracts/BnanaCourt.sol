// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

/**
 * @title  BnanaCourt
 * @notice On-chain “court” with burned fees, weighted prediction pools,
 *         a 20 s quiet-zone before settlement, and victor / staking fees.
 */
contract BnanaCourt is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using ECDSA    for bytes32;

    /* --------------------------------------------------------------------- */
    /*                            CONFIG / CONSTS                            */
    /* --------------------------------------------------------------------- */
    IERC20  public immutable banana;                  // wager / fee token
    address public           burnAddress  = 0x000000000000000000000000000000000000dEaD;
    address public           platformSigner;          // off-chain verdict signer
    address public           idStaking;               // optional 5 % sink

    uint256 public constant REPORT_FEE   = 10 * 1e18;
    uint256 public constant EVIDENCE_FEE =  5 * 1e18;
    uint256 public constant CLAIM_PERIOD = 90 days;
    uint32  public constant BETTING_BUFFER_SEC = 20;  // quiet-zone

    enum Side { NONE, CONVICT, ACQUIT }

    struct Crime {
        bool        exists;
        uint40      filedAt;
        uint32      phaseASeconds;
        uint32      phaseBSeconds;

        uint256     convictPot;
        uint256     acquitPot;
        uint256     bountyPot;

        address     reporter;        // accuser
        address     accused;         // set at settlement

        bool        settled;
        Side        winningSide;
        uint256     totalPotAtSettlement;  // pool left for bettors after fees
        uint256     claimedSoFar;
    }

    mapping(uint256 => Crime) public crimes;
    mapping(uint256 => mapping(address => uint256)) public betsConvict;
    mapping(uint256 => mapping(address => uint256)) public betsAcquit;
    mapping(uint256 => mapping(address => bool))    public hasClaimed;

    /* --------------------------------------------------------------------- */
    /*                                EVENTS                                 */
    /* --------------------------------------------------------------------- */
    event CrimeReported    (uint256 indexed crimeId, address indexed reporter);
    event EvidenceSubmitted(uint256 indexed crimeId, address indexed submitter);
    event BetPlaced        (uint256 indexed crimeId, address indexed bettor, bool convictSide, uint256 amount);
    event BountyAdded      (uint256 indexed crimeId, address indexed from, uint256 amount);
    event VerdictSettled   (uint256 indexed crimeId, bool convicted, address indexed accused);
    event WinningsClaimed  (uint256 indexed crimeId, address indexed winner, uint256 amount);
    event DustSwept        (uint256 indexed crimeId, uint256 amount);

    /* --------------------------------------------------------------------- */
    /*                               MODIFIER                                */
    /* --------------------------------------------------------------------- */
    modifier validCrime(uint256 crimeId) {
        require(crimes[crimeId].exists, "Crime does not exist");
        _;
    }

    /* --------------------------------------------------------------------- */
    /*                              CONSTRUCTOR                              */
    /* --------------------------------------------------------------------- */
    constructor(address _banana, address _signer) {
        require(_banana != address(0) && _signer != address(0), "Zero address");
        banana         = IERC20(_banana);
        platformSigner = _signer;
    }

    /* --------------------------------------------------------------------- */
    /*                             ADMIN SETTERS                             */
    /* --------------------------------------------------------------------- */
    function setPlatformSigner(address newSigner) external onlyOwner {
        require(newSigner != address(0), "Zero address");
        platformSigner = newSigner;
    }
    function setBurnAddress(address newBurn) external onlyOwner {
        burnAddress = newBurn;
    }
    function setIdStaking(address staking) external onlyOwner {
        idStaking = staking;                       // 0x0 disables fee
    }

    /* --------------------------------------------------------------------- */
    /*                           CORE FUNCTIONS                              */
    /* --------------------------------------------------------------------- */
    function reportCrime(
        uint256 crimeId,
        uint32  phaseASeconds,
        uint32  phaseBSeconds
    ) external nonReentrant {
        require(!crimes[crimeId].exists, "Already exists");
        banana.safeTransferFrom(msg.sender, burnAddress, REPORT_FEE);

        crimes[crimeId] = Crime({
            exists:        true,
            filedAt:       uint40(block.timestamp),
            phaseASeconds: phaseASeconds,
            phaseBSeconds: phaseBSeconds,
            convictPot:    0,
            acquitPot:     0,
            bountyPot:     0,
            reporter:      msg.sender,
            accused:       address(0),
            settled:       false,
            winningSide:   Side.NONE,
            totalPotAtSettlement: 0,
            claimedSoFar:  0
        });

        emit CrimeReported(crimeId, msg.sender);
    }

    /** Evidence allowed only during Phase A. */
    function submitEvidence(uint256 crimeId)
        external
        nonReentrant
        validCrime(crimeId)
    {
        Crime storage c = crimes[crimeId];
        require(!c.settled, "Settled");
        require(block.timestamp < c.filedAt + c.phaseASeconds, "Evidence window closed");

        banana.safeTransferFrom(msg.sender, burnAddress, EVIDENCE_FEE);
        emit EvidenceSubmitted(crimeId, msg.sender);
    }

    function addBounty(uint256 crimeId, uint256 amount)
        external
        nonReentrant
        validCrime(crimeId)
    {
        require(amount > 0, "Zero amount");
        Crime storage c = crimes[crimeId];
        _enforceBettingOpen(c);

        c.bountyPot += amount;
        banana.safeTransferFrom(msg.sender, address(this), amount);
        emit BountyAdded(crimeId, msg.sender, amount);
    }

    function placeBet(uint256 crimeId, Side side, uint256 amount)
        external
        nonReentrant
        validCrime(crimeId)
    {
        require(side == Side.CONVICT || side == Side.ACQUIT, "Invalid side");
        require(amount > 0, "Zero amount");

        Crime storage c = crimes[crimeId];
        require(!c.settled, "Settled");
        _enforceBettingOpen(c);

        banana.safeTransferFrom(msg.sender, address(this), amount);

        if (side == Side.CONVICT) {
            c.convictPot += amount;
            betsConvict[crimeId][msg.sender] += amount;
        } else {
            c.acquitPot  += amount;
            betsAcquit[crimeId][msg.sender]  += amount;
        }

        emit BetPlaced(crimeId, msg.sender, side == Side.CONVICT, amount);
    }

    /* --------------------------------------------------------------------- */
    /*                             SETTLEMENT                                */
    /* --------------------------------------------------------------------- */
    /**
     * @param accused Address of the accused (may be 0x0). Must be signed into
     *                the off-chain verdict so it can’t be changed on-chain.
     */
    function settleCrime(
        uint256 crimeId,
        Side    verdict,
        address accused,
        bytes   calldata signature
    ) external nonReentrant validCrime(crimeId)
    {
        Crime storage c = crimes[crimeId];
        require(!c.settled, "Already settled");

        uint256 deadline = c.filedAt + c.phaseASeconds + c.phaseBSeconds;
        require(block.timestamp >= deadline, "Too early");
        require(verdict == Side.CONVICT || verdict == Side.ACQUIT, "Bad verdict");

        // Signature covers accused to bind the victor fee recipient
        bytes32 digest = keccak256(
            abi.encodePacked(address(this), block.chainid, crimeId, verdict, accused)
        );
        address signer = digest.toEthSignedMessageHash().recover(signature);
        require(signer == platformSigner, "Bad signature");

        c.accused     = accused;
        c.settled     = true;
        c.winningSide = verdict;

        uint256 grossPot = c.convictPot + c.acquitPot + c.bountyPot;

        // ---- distribute fees & get leftover for bettors -------------
        c.totalPotAtSettlement =
            _distributeFees(verdict, c.reporter, accused, grossPot);

        emit VerdictSettled(crimeId, verdict == Side.CONVICT, accused);
    }

    /* ---------- PRIVATE helper to keep settleCrime stack light ----------- */
    function _distributeFees(
        Side        verdict,
        address     reporter,
        address     accused,
        uint256     grossPot
    ) private returns (uint256 remainingPot) {
        /* 1. 5 % staking fee */
        uint256 idFee = 0;
        if (idStaking != address(0)) {
            idFee = grossPot * 5 / 100;
            banana.safeTransfer(idStaking, idFee);
        }

        /* 2. 5 % victor fee */
        uint256 victorFee = grossPot * 5 / 100;
        address victor   = (verdict == Side.CONVICT) ? reporter : accused;
        if (victor == address(0)) {
            banana.safeTransfer(burnAddress, victorFee);
        } else {
            banana.safeTransfer(victor, victorFee);
        }

        /* 3. leftovers for bettors */
        remainingPot = grossPot - idFee - victorFee;
    }

    /* --------------------------------------------------------------------- */
    /*                            CLAIM, SWEEP                               */
    /* --------------------------------------------------------------------- */
    function claimWinnings(uint256 crimeId)
        external
        nonReentrant
        validCrime(crimeId)
    {
        Crime storage c = crimes[crimeId];
        require(c.settled, "Not settled");
        require(!hasClaimed[crimeId][msg.sender], "Already claimed");

        uint256 userStake;
        uint256 sidePot;
        if (c.winningSide == Side.CONVICT) {
            userStake = betsConvict[crimeId][msg.sender];
            sidePot   = c.convictPot;
        } else {
            userStake = betsAcquit[crimeId][msg.sender];
            sidePot   = c.acquitPot;
        }
        require(userStake > 0, "No winnings");

        uint256 payout = (userStake * c.totalPotAtSettlement) / sidePot;

        hasClaimed[crimeId][msg.sender] = true;
        c.claimedSoFar += payout;
        banana.safeTransfer(msg.sender, payout);

        emit WinningsClaimed(crimeId, msg.sender, payout);
    }

    function sweepDust(uint256 crimeId)
        external
        nonReentrant
        validCrime(crimeId)
    {
        Crime storage c = crimes[crimeId];
        require(c.settled, "Not settled");

        uint256 graceEnds = c.filedAt + c.phaseASeconds + c.phaseBSeconds + CLAIM_PERIOD;
        require(block.timestamp >= graceEnds, "Grace period");

        uint256 leftover = c.totalPotAtSettlement - c.claimedSoFar;
        require(leftover > 0, "No dust");

        c.claimedSoFar += leftover;
        banana.safeTransfer(burnAddress, leftover);

        emit DustSwept(crimeId, leftover);
    }

    /* --------------------------------------------------------------------- */
    /*                                  VIEWS                                */
    /* --------------------------------------------------------------------- */
    function phaseFor(uint256 crimeId) external view returns (string memory) {
        Crime storage c = crimes[crimeId];
        if (!c.exists) return "NONE";
        if (c.settled) return "SETTLED";
        uint256 elapsed = block.timestamp - c.filedAt;
        if (elapsed < c.phaseASeconds)                       return "A";
        if (elapsed < c.phaseASeconds + c.phaseBSeconds)     return "B";
        return "C";
    }

    function claimable(uint256 crimeId, address user)
        external
        view
        returns (uint256)
    {
        Crime storage c = crimes[crimeId];
        if (!c.settled || hasClaimed[crimeId][user]) return 0;

        uint256 userStake;
        uint256 sidePot;
        if (c.winningSide == Side.CONVICT) {
            userStake = betsConvict[crimeId][user];
            sidePot   = c.convictPot;
        } else {
            userStake = betsAcquit[crimeId][user];
            sidePot   = c.acquitPot;
        }
        if (userStake == 0) return 0;
        return (userStake * c.totalPotAtSettlement) / sidePot;
    }

    /* --------------------------------------------------------------------- */
    /*                   INTERNAL – BETTING WINDOW GUARD                     */
    /* --------------------------------------------------------------------- */
    function _enforceBettingOpen(Crime storage c) internal view {
        uint256 cutoff = c.filedAt + c.phaseASeconds + c.phaseBSeconds - BETTING_BUFFER_SEC;
        require(block.timestamp < cutoff, "Betting closed");
    }
}
