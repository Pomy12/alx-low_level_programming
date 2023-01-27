 *
 * Return: value of the delete node (INT)
 */
int pop_listint(listint_t **head)
{
        int value;
        listint_t *new_head;

        if (!(*head) || !head)
                return (0);

        new_head = (*head)->next;
        value = (*head)->n;
        free(*head);
        *head = new_head;

        return (value);
}
