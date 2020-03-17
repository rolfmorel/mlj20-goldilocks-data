from typing import List, Tuple

Symbol = None
TruthValue = None
HeuristicType = None

class Observer(object):
    def init_program(self, incremental: bool) -> None:
        """
        Called once in the beginning.

        Parameters
        ----------
        incremental : bool
            Whether the program is incremental. If the incremental flag is
            true, there can be multiple calls to `Control.solve`.

        Returns
        -------
        None
        """

    def begin_step(self) -> None:
        """
        Marks the beginning of a block of directives passed to the solver.

        Returns
        -------
        None
        """

    def rule(self, choice: bool, head: List[int], body: List[int]) -> None:
        """
        Observe rules passed to the solver.

        Parameters
        ----------
        choice : bool
            Determines if the head is a choice or a disjunction.
        head : List[int]
            List of program atoms forming the rule head.
        body : List[int]
            List of program literals forming the rule body.

        Returns
        -------
        None
        """
        print(f"OBSERVER rule: choice: {choice}, head: {head}, body: {body}")

    def weight_rule(self, choice: bool, head: List[int], lower_bound: int,
                    body: List[Tuple[int,int]]) -> None:
        """
        Observe rules with one weight constraint in the body passed to the
        solver.

        Parameters
        ----------
        choice : bool
            Determines if the head is a choice or a disjunction.
        head : List[int]
            List of program atoms forming the head of the rule.
        lower_bound:
            The lower bound of the weight constraint in the rule body.
        body : List[Tuple[int,int]]
            List of weighted literals (pairs of literal and weight) forming the
            elements of the weight constraint.

        Returns
        -------
        None
        """

    def minimize(self, priority: int, literals: List[Tuple[int,int]]) -> None:
        """
        Observe minimize directives (or weak constraints) passed to the
        solver.

        Parameters
        ----------
        priority : int
            The priority of the directive.
        literals : List[Tuple[int,int]]
            List of weighted literals whose sum to minimize (pairs of literal
            and weight).

        Returns
        -------
        None
        """

    def project(self, atoms: List[int]) -> None:
        """
        Observe projection directives passed to the solver.

        Parameters
        ----------
        atoms : List[int]
            The program atoms to project on.

        Returns
        -------
        None
        """

    def output_atom(self, symbol: Symbol, atom: int) -> None:
        """
        Observe shown atoms passed to the solver.  Facts do not have an
        associated program atom. The value of the atom is set to zero.

        Parameters
        ----------
        symbol : Symbolic
            The symbolic representation of the atom.
        atom : int
            The associated program atom (0 for facts).

        Returns
        -------
        None
        """
        print(f"OBSERVER output_atom: symbol: {symbol}, atom: {atom}")


    def output_term(self, symbol: Symbol, condition: List[int]) -> None:
        """
        Observe shown terms passed to the solver.

        Parameters
        ----------
        symbol : Symbol
            The symbolic representation of the term.
        condition : List[int]
            List of program literals forming the condition when to show the
            term.

        Returns
        -------
        None
        """

    def output_csp(self, symbol: Symbol, value: int,
                   condition: List[int]) -> None:
        """
        Observe shown csp variables passed to the solver.

        Parameters
        ----------
        symbol : Symbol
            The symbolic representation of the variable.
        value : int
            The integer value of the variable.
        condition : List[int]
            List of program literals forming the condition when to show the
            variable with its value.

        Returns
        -------
        None
        """

    def external(self, atom: int, value: TruthValue) -> None:
        """
        Observe external statements passed to the solver.

        Parameters
        ----------
        atom : int
            The external atom in form of a program literal.
        value : TruthValue
            The truth value of the external statement.

        Returns
        -------
        None
        """

    def assume(self, literals: List[int]) -> None:
        """
        Observe assumption directives passed to the solver.

        Parameters
        ----------
        literals : List[int]
            The program literals to assume (positive literals are true and
            negative literals false for the next solve call).

        Returns
        -------
        None
        """

    def heuristic(self, atom: int, type: HeuristicType, bias: int,
                  priority: int, condition: List[int]) -> None:
        """
        Observe heuristic directives passed to the solver.

        Parameters
        ----------
        atom : int
            The program atom heuristically modified.
        type : HeuristicType
            The type of the modification.
        bias : int
            A signed integer.
        priority : int
            An unsigned integer.
        condition : List[int]
            List of program literals.

        Returns
        -------
        None
        """

    def acyc_edge(self, node_u: int, node_v: int,
                  condition: List[int]) -> None:
        """
        Observe edge directives passed to the solver.

        Parameters
        ----------
        node_u : int
            The start vertex of the edge (in form of an integer).
        node_v : int
            Тhe end vertex of the edge (in form of an integer).
        condition : List[int]
            The list of program literals forming th condition under which to
            add the edge.

        Returns
        -------
        None
        """

    def theory_term_number(self, term_id: int, number: int) -> None:
        """
        Observe numeric theory terms.

        Parameters
        ----------
        term_id : int
            The id of the term.
        number : int
            The value of the term.

        Returns
        -------
        None
        """

    def theory_term_string(self, term_id : int, name : str) -> None:
        """
        Observe string theory terms.

        Parameters
        ----------
        term_id : int
            The id of the term.
        name : str
            The string value of the term.

        Returns
        -------
        None
        """

    def theory_term_compound(self, term_id: int, name_id_or_type: int,
                             arguments: List[int]) -> None:
        """
        Observe compound theory terms.

        Parameters
        ----------
        term_id : int
            The id of the term.
        name_id_or_type : int
            The name or type of the term where
            - if it is -1, then it is a tuple
            - if it is -2, then it is a set
            - if it is -3, then it is a list
            - otherwise, it is a function and name_id_or_type refers to the id
            of the name (in form of a string term)
        arguments : List[int]
            The arguments of the term in form of a list of term ids.

        Returns
        -------
        None
        """

    def theory_element(self, element_id: int, terms: List[int],
                       condition: List[int]) -> None:
        """
        Observe theory elements.

        Parameters
        ----------
        element_id : int
            The id of the element.
        terms : List[int]
            The term tuple of the element in form of a list of term ids.
        condition : List[int]
            The list of program literals forming the condition.

        Returns
        -------
        None
        """

    def theory_atom(self, atom_id_or_zero: int, term_id: int,
                    elements: List[int]) -> None:
        """
        Observe theory atoms without guard.

        Parameters
        ----------
        atom_id_or_zero : int
            The id of the atom or zero for directives.
        term_id : int
            The term associated with the atom.
        elements : List[int]
            The elements of the atom in form of a list of element ids.

        Returns
        -------
        None
        """

    def theory_atom_with_guard(self, atom_id_or_zero: int, term_id: int,
                               elements: List[int], operator_id: int,
                               right_hand_side_id: int) -> None:
        """
        Observe theory atoms with guard.

        Parameters
        ----------
        atom_id_or_zero : int
            The id of the atom or zero for directives.
        term_id : int
            The term associated with the atom.
        elements : List[int]
            The elements of the atom in form of a list of element ids.
        operator_id : int
            The id of the operator (a string term).
        right_hand_side_id : int
            The id of the term on the right hand side of the atom.

        Returns
        -------
        None
        """

    def end_step(self) -> None:
        """
        Marks the end of a block of directives passed to the solver.

        This function is called right before solving starts.

        Returns
        -------
        None
        """
